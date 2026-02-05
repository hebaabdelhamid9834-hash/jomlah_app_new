import 'dart:async';

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/screens/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'dart:async';

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/screens/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late Animation<double> _logoAnimation;

  late AnimationController _bgController;
  late Animation<double> _bgAnimation;

  PackageInfo _packageInfo = PackageInfo(
    appName: AppConfig.app_name,
    packageName: 'Unknown',
    version: AppConfig.app_version,
    buildNumber: 'Unknown',
  );

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

    // Logo fade-in animation
    _logoController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeInOut,
    );
    _logoController.forward();

    // Background scale/bounce animation
    _bgController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _bgAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(parent: _bgController, curve: Curves.easeOutBack),
    );
    _bgController.forward();

    _initPackageInfo();
    _navigateToMain();
  }

  @override
  void dispose() {
    _logoController.dispose();
    _bgController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  Future<void> _initPackageInfo() async {
    try {
      final PackageInfo info = await PackageInfo.fromPlatform();
      if (!mounted) return;
      setState(() {
        _packageInfo = info;
      });
    } catch (e) {}
  }

  void _navigateToMain() {
    Timer(const Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Main()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image with scale animation
          ScaleTransition(
            scale: _bgAnimation,
            child: Image.asset(
              "assets/splash_login_registration_background_image.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: MyTheme.splash_screen_color.withOpacity(0.5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated logo
              FadeTransition(
                opacity: _logoAnimation,
                child: Hero(
                  tag: "splashscreenImage",
                  child: Image.asset(
                    "assets/splash_screen_logo.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // App version with slide animation
              SlideTransition(
                position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                    .animate(CurvedAnimation(
                    parent: _logoController, curve: Curves.easeOut)),
                child: Text(
                  "V ${AppConfig.app_version}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              // Copyright text with fade-in
              FadeTransition(
                opacity: _logoAnimation,
                child: Text(
                  AppConfig.copyright_text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
