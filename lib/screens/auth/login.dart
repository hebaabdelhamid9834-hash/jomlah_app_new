import 'dart:async';
import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:math';

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/custom/btn.dart';
import 'package:active_ecommerce_cms_demo_app/custom/input_decorations.dart';
import 'package:active_ecommerce_cms_demo_app/custom/intl_phone_input.dart';
import 'package:active_ecommerce_cms_demo_app/custom/loading.dart';
import 'package:active_ecommerce_cms_demo_app/custom/toast_component.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/auth_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/other_config.dart';
import 'package:active_ecommerce_cms_demo_app/repositories/address_repository.dart';
import 'package:active_ecommerce_cms_demo_app/repositories/auth_repository.dart';
import 'package:active_ecommerce_cms_demo_app/repositories/profile_repository.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/otp.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/password_forget.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/registration.dart';
import 'package:active_ecommerce_cms_demo_app/screens/index.dart';
import 'package:active_ecommerce_cms_demo_app/screens/main.dart';
import 'package:active_ecommerce_cms_demo_app/ui_elements/auth_ui.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _login_by = "phone"; //phone or email
  String initialCountry = 'US';

  // PhoneNumber phoneCode = PhoneNumber(isoCode: 'US', dialCode: "+1");
  var countries_code = <String?>[];

  String? _phone = "";
  String? _country_code = "+20";

  //controllers
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    //on Splash Screen hide statusbar
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
    super.initState();
    fetch_country();
  }

  Future<void> fetch_country() async {
    var data = await AddressRepository().getCountryList();
    data.countries.forEach((c) => countries_code.add(c.code));
    setState(() {
      countries_code = data.countries.map((c) => c.code).toList();
    });
  }

  @override
  void dispose() {
    //before going to other screen show statusbar
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    super.dispose();
  }

  Future<void> onPressedLogin(ctx) async {
    FocusScope.of(context).unfocus();

    Loading.show(context);
    var email = _emailController.text.toString();
    var password = _passwordController.text.toString();

    if (_login_by == 'email' && email == "") {
      ToastComponent.showDialog(AppLocalizations.of(context).enter_email);
      return;
    } else if (_login_by == 'phone' && _phone == "") {
      ToastComponent.showDialog(
        AppLocalizations.of(context).enter_phone_number,
      );
      return;
    } else if (password == "") {
      ToastComponent.showDialog(AppLocalizations.of(context).enter_password);
      return;
    }

    var loginResponse = await AuthRepository().getLoginResponse(
      _login_by == 'email' ? email : _phone,
      _country_code!,
      password,
      _login_by,
    );

   // Loading.close();
    Navigator.of(context, rootNavigator: true).pop();
    await Future.delayed(const Duration(milliseconds: 100));

    // empty temp user id after logged in
    temp_user_id.$ = "";
    temp_user_id.save();

    if (loginResponse.result == false) {
      if (loginResponse.message.runtimeType == List) {
        ToastComponent.showDialog(loginResponse.message!.join("\n"));
        return;
      }
      ToastComponent.showDialog(loginResponse.message!.toString());
    } else {
      debugPrint("in the success block ");

      ToastComponent.showDialog(loginResponse.message!);

      AuthHelper().setUserData(loginResponse);

      // push notification starts
      if (OtherConfig.USE_PUSH_NOTIFICATION) {
        final FirebaseMessaging fcm = FirebaseMessaging.instance;

        await fcm.requestPermission(
          alert: true,
          announcement: false,
          badge: true,
          carPlay: false,
          criticalAlert: false,
          provisional: false,
          sound: true,
        );

        String? fcmToken;
        try {
          fcmToken = await fcm.getToken();
        } catch (e) {
          debugPrint('Caught exception: $e');
        }

        debugPrint("--fcm token--");
        // debugPrint("token: $fcmToken");
        // update device token
        if (fcmToken != null && is_logged_in.$) {
          var deviceTokenUpdateResponse = await ProfileRepository().getDeviceTokenUpdateResponse(fcmToken);
        }
      }

      // redirect
      if (loginResponse.user!.emailVerified!) {
        print("email verified and navigation is done but rout has problem ");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Index(
                // verify_by: _register_by,
                // user_id: signupResponse.user_id,
              );
            },
          ),
        );
       // context.push("/");
      } else {
        if ((mail_verification_status.$ && _login_by == "email") || (mail_verification_status.$ && _login_by == "phone")) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Otp(
                    // verify_by: _register_by,
                    // user_id: signupResponse.user_id,
                    );
              },
            ),
          );
        } else {
          context.push("/");
        }
      }
    }
  }

  Future<void> onPressedFacebookLogin() async {
    try {
      final facebookLogin = await FacebookAuth.instance.login(
        loginBehavior: LoginBehavior.webOnly,
      );

      if (facebookLogin.status == LoginStatus.success) {
        // get the user data
        // by default we get the userId, email,name and picture
        final userData = await FacebookAuth.instance.getUserData();
        var loginResponse = await AuthRepository().getSocialLoginResponse(
          "facebook",
          userData['name'].toString(),
          userData['email'].toString(),
          userData['id'].toString(),
          access_token: facebookLogin.accessToken!.tokenString,
        );
        // debugPrint("..........................${loginResponse.toString()}");
        if (loginResponse.result == false) {
          ToastComponent.showDialog(loginResponse.message!);
        } else {
          ToastComponent.showDialog(loginResponse.message!);

          AuthHelper().setUserData(loginResponse);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Main();
              },
            ),
          );
          FacebookAuth.instance.logOut();
        }
        // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
      } else {
        debugPrint("....Facebook auth Failed.........");
        // debugPrint(facebookLogin.status);
        // debugPrint(facebookLogin.message);
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      // TODO
    }
  }

  Future<void> onPressedGoogleLogin() async {
    debugPrint("===== Google Login Started =====");

    if (!GoogleSignIn.instance.supportsAuthenticate()) {
      debugPrint("❌ GoogleSignIn not supported on this device");
      ToastComponent.showDialog("Google login is not supported on this device");
      return;
    }

    debugPrint("✔ Device supports GoogleSignIn.authenticate()");

    StreamSubscription? sub;
    final completer = Completer<GoogleSignInAccount?>();

    try {
      debugPrint("👂 Listening to Google authenticationEvents...");

      sub = GoogleSignIn.instance.authenticationEvents.listen((event) {
        debugPrint("🔔 Google Event Received: $event");

        if (event is GoogleSignInAuthenticationEventSignIn) {
          debugPrint("✔ User Signed In Event Captured");
          sub?.cancel();
          if (!completer.isCompleted) completer.complete(event.user);
        } else if (event is GoogleSignInAuthenticationEventSignOut) {
          debugPrint("ℹ️ User Signed Out Event Captured");
        }
      }, onError: (e) {
        debugPrint("❌ Event Stream Error: $e");
        if (!completer.isCompleted) completer.completeError(e);
      });

      debugPrint("🚀 Triggering GoogleSignIn.authenticate()...");
      await GoogleSignIn.instance.authenticate();
      debugPrint("⌛ Waiting for user selection...");

      final GoogleSignInAccount? googleUser = await completer.future.timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          debugPrint("⏳ Google Sign-in Timed Out!");
          sub?.cancel();
          return null;
        },
      );

      if (googleUser == null) {
        debugPrint("❌ googleUser == null (User cancelled or timeout)");
        ToastComponent.showDialog("Google sign-in cancelled or timed out");
        return;
      }

      debugPrint("🎉 User Selected: ${googleUser.email}");
      debugPrint("📛 Display Name: ${googleUser.displayName}");
      debugPrint("🆔 User ID: ${googleUser.id}");

      final googleAuth = googleUser.authentication;
      final String? idToken = googleAuth.idToken;

      debugPrint("🔑 ID Token received: ${idToken?.substring(0, 15)}...");

      debugPrint("🌍 Sending data to server...");
      var loginResponse = await AuthRepository().getSocialLoginResponse(
        "google",
        googleUser.displayName,
        googleUser.email,
        googleUser.id,
        access_token: idToken,
      );

      debugPrint("📥 Server Response: ${loginResponse.toString()}");

      if (loginResponse.result == false) {
        debugPrint("❌ Login failed from server: ${loginResponse.message}");
        ToastComponent.showDialog(loginResponse.message!);
      } else {
        debugPrint("✔ Login success — Saving user data...");
        ToastComponent.showDialog(loginResponse.message!);
        AuthHelper().setUserData(loginResponse);

        debugPrint("➡️ Navigating to Main()");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Main()),
        );
      }

      debugPrint("🔌 Disconnecting Google session...");
      await GoogleSignIn.instance.disconnect();
    } on Exception catch (e, st) {
      debugPrint("❌ Google login error: $e");
      debugPrint("📄 StackTrace:\n$st");
      ToastComponent.showDialog("Google login failed: $e");
    } finally {
      debugPrint("🧹 Cleaning subscription...");
      await sub?.cancel();
    }

    debugPrint("===== Google Login Finished =====");
  }
  // Future<void> onPressedGoogleLogin() async {
  //   try {
  //     final GoogleSignInAccount googleUser = (await GoogleSignIn().signIn())!;

  //     debugPrint(googleUser.toString());

  //     GoogleSignInAuthentication googleSignInAuthentication = googleUser.authentication;
  //     String? accessToken = googleSignInAuthentication.accessToken;

  //     // debugPrint("displayName ${googleUser.displayName}");
  //     // debugPrint("email ${googleUser.email}");
  //     // debugPrint("googleUser.id ${googleUser.id}");

  //     var loginResponse = await AuthRepository().getSocialLoginResponse(
  //       "google",
  //       googleUser.displayName,
  //       googleUser.email,
  //       googleUser.id,
  //       access_token: accessToken,
  //     );

  //     if (loginResponse.result == false) {
  //       ToastComponent.showDialog(loginResponse.message!);
  //     } else {
  //       ToastComponent.showDialog(loginResponse.message!);
  //       AuthHelper().setUserData(loginResponse);
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             return Main();
  //           },
  //         ),
  //       );
  //     }
  //     GoogleSignIn().disconnect();
  //   } on Exception catch (e) {
  //     debugPrint("error is ....... $e");
  //     // TODO
  //   }
  // }

  // onPressedTwitterLogin() async {
  //   try {
  //     final twitterLogin = new TwitterLogin(
  //       apiKey: SocialConfig().twitter_consumer_key,
  //       apiSecretKey: SocialConfig().twitter_consumer_secret,
  //       redirectURI: 'activeecommerceflutterapp://',
  //     );
  //     // Trigger the sign-in flow

  //     final authResult = await twitterLogin.login();

  //     // debugPrint("authResult");

  //     // debugPrint(json.encode(authResult));

  //     var loginResponse = await AuthRepository().getSocialLoginResponse(
  //       "twitter",
  //       authResult.user!.name,
  //       authResult.user!.email,
  //       authResult.user!.id.toString(),
  //       access_token: authResult.authToken,
  //       secret_token: authResult.authTokenSecret,
  //     );

  //     if (loginResponse.result == false) {
  //       ToastComponent.showDialog(loginResponse.message!);
  //     } else {
  //       ToastComponent.showDialog(loginResponse.message!);
  //       AuthHelper().setUserData(loginResponse);
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) {
  //             return Main();
  //           },
  //         ),
  //       );
  //     }
  //   } on Exception catch (e) {
  //     debugPrint("error is ....... $e");
  //     // TODO
  //   }
  // }

  String generateNonce([int length = 32]) {
    final charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<void> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);

    // Request credential for the currently signed in Apple account.
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      var loginResponse = await AuthRepository().getSocialLoginResponse(
        "apple",
        appleCredential.givenName,
        appleCredential.email,
        appleCredential.userIdentifier,
        access_token: appleCredential.identityToken,
      );

      if (loginResponse.result == false) {
        ToastComponent.showDialog(loginResponse.message!);
      } else {
        ToastComponent.showDialog(loginResponse.message!);
        AuthHelper().setUserData(loginResponse);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Main();
            },
          ),
        );
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      // TODO
    }
    // Create an `OAuthCredential` from the credential returned by Apple.
    // final oauthCredential = OAuthProvider("apple.com").credential(
    //   idToken: appleCredential.identityToken,
    //   rawNonce: rawNonce,
    // );
    //debugPrint(oauthCredential.accessToken);

    // Sign in the user with Firebase. If the nonce we generated earlier does
    // not match the nonce in `appleCredential.identityToken`, sign in will fail.
    //return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return AuthScreen.buildScreen(
      context,
      "${AppLocalizations.of(context).login_to} ${AppConfig.app_name}",
      buildBody(context, screenWidth),
    );
  }

  Widget buildBody(BuildContext context, double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth * (3 / 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  AppLocalizations.of(context).login_screen_phone,
                  style: TextStyle(
                    color: MyTheme.accent_color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 16.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: GestureDetector(
              //           onTap: () {
              //             setState(() {
              //               _login_by = "email";
              //             });
              //           },
              //           child: Container(
              //             height: 40,
              //             decoration: BoxDecoration(
              //               color: _login_by == "email" ? MyTheme.accent_color : Colors.grey[200],
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(8),
              //                 bottomLeft: Radius.circular(8),
              //               ),
              //             ),
              //             child: Center(
              //               child: Text(
              //                 AppLocalizations.of(context).email_ucf,
              //                 style: TextStyle(
              //                   color: _login_by == "email" ? Colors.white : Colors.black,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: GestureDetector(
              //           onTap: () {
              //             setState(() {
              //               _login_by = "phone";
              //             });
              //           },
              //           child: Container(
              //             height: 40,
              //             decoration: BoxDecoration(
              //               color: _login_by == "phone" ? MyTheme.accent_color : Colors.grey[200],
              //               borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(8),
              //                 bottomRight: Radius.circular(8),
              //               ),
              //             ),
              //             child: Center(
              //               child: Text(
              //                 AppLocalizations.of(context).login_screen_phone,
              //                 style: TextStyle(
              //                   color: _login_by == "phone" ? Colors.white : Colors.black,
              //                   fontWeight: FontWeight.bold,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // if (_login_by == "email")
              //   Padding(
              //     padding: const EdgeInsets.only(bottom: 8.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //         SizedBox(
              //           height: 36,
              //           child: TextField(
              //             controller: _emailController,
              //             autofocus: false,
              //             decoration: InputDecorations.buildInputDecoration_1(
              //               hint_text: "johndoe@example.com",
              //             ),
              //           ),
              //         ),
              //         otp_addon_installed.$
              //             ? GestureDetector(
              //                 onTap: () {
              //                   setState(() {
              //                     _login_by = "phone";
              //                   });
              //                 },
              //                 child: Text(
              //                   AppLocalizations.of(
              //                     context,
              //                   ).or_login_with_a_phone,
              //                   style: TextStyle(
              //                     color: MyTheme.accent_color,
              //                     fontStyle: FontStyle.italic,
              //                     decoration: TextDecoration.underline,
              //                   ),
              //                 ),
              //               )
              //             : Container(),
              //       ],
              //     ),
              //   )
              // else
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 36,
                        child: CustomInternationalPhoneNumberInput(
                          searchBoxDecoration: InputDecoration(
                            hintText:AppLocalizations.of(
                              context,
                            ).search_here_ucf,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                          ),
                          countries: countries_code,
                          locale: "ar",
                          onInputChanged: (PhoneNumber number) {
                            debugPrint(number.phoneNumber);
                            setState(() {
                              _phone = number.parseNumber();
                              _country_code=number.dialCode;
                              print("country code $_country_code");

                            });
                          },
                          onInputValidated: (bool value) {
                            debugPrint(value.toString());
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(
                            color: MyTheme.font_grey,
                          ),
                          textStyle: TextStyle(color: MyTheme.font_grey),
                          // initialValue: PhoneNumber(
                          //     isoCode: countries_code[0].toString()),
                          textFieldController: _phoneNumberController,
                          formatInput: true,
                          keyboardType: TextInputType.numberWithOptions(
                            signed: true,
                            decimal: true,
                          ),
                          inputDecoration: InputDecorations.buildInputDecoration_phone(
                            hint_text: "01XXX XXX XXX",
                          ),
                          onSaved: (PhoneNumber number) {
                            debugPrint('On Saved: $number');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  AppLocalizations.of(context).password_ucf,
                  style: TextStyle(
                    color: MyTheme.accent_color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 36,
                      child: TextField(
                        controller: _passwordController,
                        autofocus: false,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecorations.buildInputDecoration_1(
                          hint_text: "• • • • • • • •",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PasswordForget();
                            },
                          ),
                        );
                      },
                      child: Text(
                        AppLocalizations.of(
                          context,
                        ).login_screen_forgot_password,
                        style: TextStyle(
                          color: MyTheme.accent_color,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyTheme.textfield_grey, width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: Btn.minWidthFixHeight(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50,
                    color: MyTheme.accent_color,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).login_screen_log_in,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      onPressedLogin(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Center(
                  child: Text(
                    AppLocalizations.of(
                      context,
                    ).login_screen_or_create_new_account,
                    style: TextStyle(color: MyTheme.font_grey, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
                child: Btn.minWidthFixHeight(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50,
                  color: MyTheme.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                  ),
                  child: Text(
                    AppLocalizations.of(context).login_screen_sign_up,
                    style: TextStyle(
                      color: MyTheme.accent_color,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Registration();
                        },
                      ),
                    );
                  },
                ),
              ),
              if (Platform.isIOS)
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SignInWithAppleButton(
                    text: AppLocalizations.of(context).sign_in_with_apple,
                    onPressed: () async {
                      signInWithApple();
                    },
                  ),
                ),
              Visibility(
                visible: allow_google_login.$ || allow_facebook_login.$,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).login_screen_login_with,
                      style: TextStyle(color: MyTheme.font_grey, fontSize: 12),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: allow_google_login.$,
                          child: InkWell(
                            onTap: () {
                              onPressedGoogleLogin();
                            },
                            child: SizedBox(
                              width: 28,
                              child: Image.asset("assets/google_logo.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Visibility(
                            visible: allow_facebook_login.$,
                            child: InkWell(
                              onTap: () {
                                onPressedFacebookLogin();
                              },
                              child: SizedBox(
                                width: 28,
                                child: Image.asset(
                                  "assets/facebook_logo.png",
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (allow_twitter_login.$)
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: InkWell(
                              onTap: () {
                                // onPressedTwitterLogin();
                              },
                              child: SizedBox(
                                width: 28,
                                child: Image.asset("assets/twitter_logo.png"),
                              ),
                            ),
                          ),
                        /* if (Platform.isIOS)
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            // visible: true,
                            child: A(
                              onTap: () async {
                                signInWithApple();
                              },
                              child: Container(
                                width: 28,
                                child: Image.asset("assets/apple_logo.png"),
                              ),
                            ),
                          ),*/
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
