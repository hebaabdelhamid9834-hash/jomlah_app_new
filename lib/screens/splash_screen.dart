import 'dart:math' as math;

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/screens/choose_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  PackageInfo _packageInfo = PackageInfo(
    appName: AppConfig.app_name,
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  late AnimationController _controller;

  late Animation<double> bgFade;
  late Animation<double> bgScale;

  late Animation<double> logoScale;
  late Animation<Offset> textSlide;
  late Animation<double> textFade;

  Future<void> _initPackageInfo() async {
    try {
      final info = await PackageInfo.fromPlatform();
      if (!mounted) return;
      setState(() {
        _packageInfo = info;
      });
    } catch (_) {}
  }

  @override
  void initState() {
    super.initState();

    _initPackageInfo();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    bgFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    bgScale = Tween<double>(begin: 1.1, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // 🔥 smoother pop for bigger logo
    logoScale = Tween<double>(begin: 0.4, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    textSlide = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();

    Future.delayed(const Duration(milliseconds: 4600), () {
      if (!mounted) return;

      // 🔥 TODO: navigate to your next screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ChooseLanguage()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return splashScreen();
  }

  Widget splashScreen() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // responsive logo size
    final double logoSize = math.min(140.0, height * 0.18);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              /// 🔹 Background (fade + zoom)
              // FadeTransition(
              //   opacity: bgFade,
              //   child: Transform.scale(
              //     scale: bgScale.value,
              //     child: Center(
              //       child: Hero(
              //         tag: "backgroundImageInSplash",
              //         child: Image.asset(
              //           "assets/splash_login_registration_background_image.png",
              //           fit: BoxFit.cover,
              //           height: height,
              //           width: width,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              /// Gradient overlay for better contrast
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: MyTheme.accent_color,
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     // Colors.black.withOpacity(0.25),
                    //     MyTheme.accent_color,
                    //   ],
                    //   stops: const [0.0, 1.0],
                    // ),
                  ),
                ),
              ),

              /// 🔹 Center content
              Positioned.fill(
                top: height / 2 - 100,
                child: Column(
                  children: [
                    /// 🔥 Bigger logo with pop animation
                    ScaleTransition(
                      scale: logoScale,
                      child: Hero(
                        tag: "splashscreenImage",
                        child: Container(
                          height: 150,
                          width: 150,
                          // padding: const EdgeInsets.all(18),
                          // decoration: BoxDecoration(
                          //   color: MyTheme.white,
                          //   borderRadius: BorderRadius.circular(16),
                          // ),
                          child: Image.asset(
                            "assets/appIcon_new.png",
                            fit: BoxFit.fill,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    /// Text slide + fade
                    FadeTransition(
                      opacity: textFade,
                      child: SlideTransition(
                        position: textSlide,
                        child: Column(
                          children: [
                            Text(
                              AppConfig.app_name_splash,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                                // shadows: [
                                //   Shadow(
                                //     color: Colors.black45,
                                //     blurRadius: 4,
                                //     offset: Offset(0, 2),
                                //   ),
                                // ],
                              ),
                            ),
                            const SizedBox(height: 4),
                            // Text(
                            //  "V ${AppConfig.app_version}",
                            //  style: const TextStyle(
                            //     fontWeight: FontWeight.w500,
                            //     fontSize: 14,
                            //    color: Colors.black,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// 🔹 Bottom copyright
              ///
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FadeTransition(
                  opacity: textFade,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/image 2.png",
                        fit: BoxFit.contain,
                        width: 128,
                        height: 200,
                      ),
                      SvgPicture.asset(
                        "assets/Group.svg",
                        fit: BoxFit.contain,
                        width: 128,height: 200,
                      ),
                     ],
                  )
                  // Center(
                  //   child: Text(
                  //     AppConfig.copyright_text,
                  //     style: const TextStyle(
                  //       fontWeight: FontWeight.w400,
                  //       fontSize: 13,
                  //      color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
