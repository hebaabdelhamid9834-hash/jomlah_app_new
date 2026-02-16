import 'dart:math' as math;

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/screens/choose_language.dart';
import 'package:active_ecommerce_cms_demo_app/screens/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'dart:math' as math;
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

    /// Navigate after animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 1200), () {
          if (!mounted) return;

          final bool isLoggedIn =
              access_token.$ != null && access_token.$!.isNotEmpty;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => isLoggedIn ? Main() : ChooseLanguage(),
            ),
          );
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final double logoSize = math.min(150.0, height * 0.18);

    return Scaffold(
      backgroundColor: MyTheme.accent_color,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: [

              /// 🔹 Center Content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    /// Logo Animation
                    ScaleTransition(
                      scale: logoScale,
                      child: Hero(
                        tag: "splashscreenImage",
                        child: SizedBox(
                          height: logoSize,
                          width: logoSize,
                          child: Image.asset(
                            "assets/appIcon_new.png",
                            fit: BoxFit.contain,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// App Name Animation
                    FadeTransition(
                      opacity: textFade,
                      child: SlideTransition(
                        position: textSlide,
                        child: Text(
                          AppConfig.app_name_splash,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// 🔹 Bottom Images
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: FadeTransition(
                  opacity: textFade,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/image 2.png",
                        fit: BoxFit.contain,
                        width: 120,
                        height: 160,
                      ),
                      SvgPicture.asset(
                        "assets/Group.svg",
                        fit: BoxFit.contain,
                        width: 120,
                        height: 160,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
