import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/custom/lang_text.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/providers/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/login.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage>
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
  late Animation<Offset> logoSlide;

  late Animation<double> textFade;
  late Animation<Offset> textSlide;

  late Animation<double> langFade;
  late Animation<Offset> langSlide;

  Future<void> _initPackageInfo() async {
    try {
      final info = await PackageInfo.fromPlatform();
      if (!mounted) return;
      setState(() {
        _packageInfo = info;
      });
    } catch (_) {}
  }
  void _applyLanguage({required String code, required String mobileCode, required bool rtl}) {
    app_language.$ = code;
    app_language.save();
    app_mobile_language.$ = mobileCode;
    app_mobile_language.save();
    app_language_rtl.$ = rtl;
    app_language_rtl.save();

    Provider.of<LocaleProvider>(context, listen: false).setLocale(mobileCode);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Use Navigator.pushReplacement to replace the current MaterialPageRoute (the splash pushed this page)
      // with the Login screen. Using GoRouter's context.go here caused a mismatch with the
      // MaterialPageRoute used to present this page and led to the choose-language screen reappearing.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Login()),
      );
    });

  }

  @override
  void initState() {
    super.initState();

    _initPackageInfo();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    );

    // Background animations
    bgFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );

    bgScale = Tween<double>(begin: 1.15, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOutCubic),
      ),
    );

    // Logo animations
    logoScale = Tween<double>(begin: 0.7, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.75, curve: Curves.easeOutCubic),
      ),
    );

    logoSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.75, curve: Curves.easeOutCubic),
      ),
    );

    // Text animations
    textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeIn),
      ),
    );

    textSlide = Tween<Offset>(
      begin: const Offset(0, 0.4),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeOut),
      ),
    );

    // Language card animations
    langFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.easeIn),
      ),
    );

    langSlide = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.easeOutCubic),
      ),
    );

    _controller.forward();
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
    // width not used

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              /// Background overlay
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: MyTheme.accent_color,
                  ),
                ),
              ),

              /// Logo + App Name
              Positioned.fill(
                top: height / 2 - 120,
                child: Column(
                  children: [
                    SlideTransition(
                      position: logoSlide,
                      child: ScaleTransition(
                        scale: logoScale,
                        child: Hero(
                          tag: "splashscreenImage",
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Image.asset(
                              "assets/appIcon_new.png",
                              fit: BoxFit.fill,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
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
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Language Selection Card
              Positioned(
                bottom: 40,
                left: 24,
                right: 24,
                child: SlideTransition(
                  position: langSlide,
                  child: FadeTransition(
                    opacity: langFade,
                    child: _buildLanguageCard(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLanguageCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(
             LangText(context).local.change_language_ucf,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Determine selected language from shared value (app_mobile_language)
          _langButton(
            "English",
            "en",
            () {
              _applyLanguage(code: 'en', mobileCode: 'en', rtl: false);
            },
            selected: (app_mobile_language.$ == 'en' || app_language.$ == 'en'),
          ),
          const SizedBox(height: 12),
          _langButton(
            "العربية",
            "ar",
            () {
              _applyLanguage(code: 'ar', mobileCode: 'ar', rtl: true);
            },
            selected: (app_mobile_language.$ == 'ar' || app_language.$ == 'ar'),
          ),
        ],
      ),
    );
  }

  Widget _langButton(String title, String code, Function() function, {required bool selected}) {
    // Selected -> accent color background, white text
    // Unselected -> white background, accent color text, light border
    final backgroundColor = selected ? MyTheme.accent_color : Colors.white;
    final foregroundColor = selected ? Colors.white : MyTheme.accent_color;

    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: BorderSide(
              color: selected ? Colors.transparent : MyTheme.accent_color,
              width: 1.0,
            ),
          ),
          elevation: selected ? 4 : 0,
        ),
        onPressed: function,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}
