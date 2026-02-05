import 'package:active_ecommerce_cms_demo_app/helpers/addons_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/auth_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/business_setting_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/system_config.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/currency_presenter.dart';
import 'package:active_ecommerce_cms_demo_app/providers/locale_provider.dart';
import 'package:active_ecommerce_cms_demo_app/screens/main.dart';
import 'package:active_ecommerce_cms_demo_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Index extends StatefulWidget {
  Index({super.key, this.goBack = true});
  bool? goBack;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  Future<String?> getSharedValueHelperData() async {
    try {
      await access_token.load();
      AuthHelper().fetch_and_set();
    } catch (_) {}
    try { await AddonsHelper().setAddonsData(); } catch (_) {}
    try { await BusinessSettingHelper().setBusinessSettingData(); } catch (_) {}
    try { await app_language.load(); } catch (_) {}
    try { await app_mobile_language.load(); } catch (_) {}
    try { await app_language_rtl.load(); } catch (_) {}
    try { await system_currency.load(); } catch (_) {}
    try {
      Provider.of<CurrencyPresenter>(context, listen: false).fetchListData();
    } catch (_) {}

    // print("new splash screen ${app_mobile_language.$}");
    // print("new splash screen app_language_rtl ${app_language_rtl.$}");

    return app_mobile_language.$;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getSharedValueHelperData().then((value) {
        Future.delayed(Duration(seconds: 2)).then((value) {
          SystemConfig.isShownSplashScreed = true;
          try {
            if (app_mobile_language.$ != null) {
              Provider.of<LocaleProvider>(context, listen: false)
                  .setLocale(app_mobile_language.$!);
            }
          } catch (_) {}
          setState(() {});
        });
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemConfig.context ??= context;
    return Scaffold(
      body: SystemConfig.isShownSplashScreed
          ? Main(
              go_back: widget.goBack!,
            )
          : SplashScreen(),
    );
  }
}
