import 'package:active_ecommerce_cms_demo_app/custom/useful_elements.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/providers/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  final ScrollController _mainScrollController = ScrollController();

  // Apply language directly
  void _applyLanguage({required String code, required String mobileCode, required bool rtl}) {
    app_language.$ = code;
    app_language.save();
    app_mobile_language.$ = mobileCode;
    app_mobile_language.save();
    app_language_rtl.$ = rtl;
    app_language_rtl.save();

    Provider.of<LocaleProvider>(context, listen: false).setLocale(mobileCode);
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: app_language_rtl.$! ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: MyTheme.mainColor,
        appBar: buildAppBar(context),
        body: Stack(
          children: [
            CustomScrollView(
              controller: _mainScrollController,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    const SizedBox(height: 16),
                    // Quick language toggles: Arabic and English
                    _languageBox(
                      title: 'العربية',
                      isActive: app_mobile_language.$ == 'ar',
                      onTap: () => _applyLanguage(code: 'ar', mobileCode: 'ar', rtl: true),
                    ),
                    const SizedBox(height: 12),
                    _languageBox(
                      title: 'English',
                      isActive: app_mobile_language.$ == 'en',
                      onTap: () => _applyLanguage(code: 'en', mobileCode: 'en', rtl: false),
                    ),
                    const SizedBox(height: 16),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MyTheme.mainColor,
      scrolledUnderElevation: 0.0,
      centerTitle: false,
      leading: Builder(
        builder: (context) => IconButton(
          padding: EdgeInsets.zero,
          icon: UsefulElements.backButton(context),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      title: Text(
        "${AppLocalizations.of(context).change_language_ucf} (${app_language.$}) - (${app_mobile_language.$})",
        style: TextStyle(
          fontSize: 16,
          color: MyTheme.dark_font_grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0.0,
      titleSpacing: 0,
    );
  }

  Widget _languageBox({required String title, required bool isActive, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isActive ? MyTheme.accent_color : MyTheme.light_grey,
            width: isActive ? 1.0 : .5,
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isActive)
              const Padding(
                padding: EdgeInsetsDirectional.only(end: 8.0),
                child: Icon(Icons.check_circle, color: Colors.green, size: 18),
              ),
            Text(
              title,
              style: TextStyle(
                color: MyTheme.dark_grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
