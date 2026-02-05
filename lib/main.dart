import 'dart:async';

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/custom/aiz_route.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/main_helpers.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/lang_config.dart';
import 'package:active_ecommerce_cms_demo_app/middlewares/auth_middleware.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/other_config.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/cart_counter.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/cart_provider.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/currency_presenter.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/select_address_provider.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/unRead_notification_counter.dart';
import 'package:active_ecommerce_cms_demo_app/providers/blog_provider.dart';
import 'package:active_ecommerce_cms_demo_app/providers/locale_provider.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auction/auction_bidded_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auction/auction_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auction/auction_products_details.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auction/auction_purchase_history.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/login.dart';
import 'package:active_ecommerce_cms_demo_app/screens/auth/registration.dart';
import 'package:active_ecommerce_cms_demo_app/screens/brand_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/category_list_n_product/category_list.dart';
import 'package:active_ecommerce_cms_demo_app/screens/category_list_n_product/category_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/checkout/cart.dart';
import 'package:active_ecommerce_cms_demo_app/screens/classified_ads/classified_ads.dart';
import 'package:active_ecommerce_cms_demo_app/screens/classified_ads/classified_product_details.dart';
import 'package:active_ecommerce_cms_demo_app/screens/classified_ads/classified_provider.dart';
import 'package:active_ecommerce_cms_demo_app/screens/classified_ads/my_classified_ads.dart';
import 'package:active_ecommerce_cms_demo_app/screens/coupon/coupons.dart';
import 'package:active_ecommerce_cms_demo_app/screens/filter.dart';
import 'package:active_ecommerce_cms_demo_app/screens/flash_deal/flash_deal_list.dart';
import 'package:active_ecommerce_cms_demo_app/screens/flash_deal/flash_deal_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/followed_sellers.dart';
import 'package:active_ecommerce_cms_demo_app/screens/index.dart';
import 'package:active_ecommerce_cms_demo_app/screens/orders/order_details.dart';
import 'package:active_ecommerce_cms_demo_app/screens/orders/order_list.dart';
import 'package:active_ecommerce_cms_demo_app/screens/package/packages.dart';
import 'package:active_ecommerce_cms_demo_app/screens/product/product_details.dart';
import 'package:active_ecommerce_cms_demo_app/screens/product/todays_deal_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/profile.dart';
import 'package:active_ecommerce_cms_demo_app/screens/seller_details.dart';
import 'package:active_ecommerce_cms_demo_app/services/push_notification_service.dart';
import 'package:active_ecommerce_cms_demo_app/single_banner/photo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:provider/provider.dart';
import 'package:shared_value/shared_value.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize WebView platform based on the current platform
  // if (Platform.isAndroid) {
  //   WebViewPlatform.instance = AndroidWebViewPlatform();
  // } else if (Platform.isIOS) {
  //   WebViewPlatform.instance = WebKitWebViewPlatform();
  // }
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  runApp(SharedValue.wrapApp(MyApp()));
}

var routes = GoRouter(
  overridePlatformDefaultLocation: false,
  navigatorKey: OneContext().key,
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      name: "Home",
      pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: Index()),
      routes: [
        GoRoute(
          path: "customer_products",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: MyClassifiedAds()),
        ),
        GoRoute(
          path: "customer-products",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: ClassifiedAds()),
        ),
        GoRoute(
          path: "customer-product/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: ClassifiedAdsDetails(slug: getParameter(state, "slug")),
          ),
        ),
        GoRoute(
          path: "product/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: ProductDetails(slug: getParameter(state, "slug")),
          ),
        ),
        GoRoute(
          path: "customer-packages",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: UpdatePackage()),
        ),
        GoRoute(
          path: "auction_product_bids",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: AuthMiddleware(AuctionBiddedProducts()).next(),
          ),
        ),
        GoRoute(
          path: "users/login",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: Login()),
        ),
        GoRoute(
          path: "users/registration",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: Registration()),
        ),
        GoRoute(
          path: "dashboard",
          name: "Profile",
          pageBuilder: (BuildContext context, GoRouterState state) => AIZRoute.rightTransition(Profile()),
        ),
        GoRoute(
          path: "auction-products",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: AuctionProducts()),
        ),
        GoRoute(
          path: "auction-product/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: AuctionProductsDetails(
              slug: getParameter(state, "slug"),
            ),
          ),
        ),
        GoRoute(
          path: "auction/purchase_history",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: AuthMiddleware(AuctionPurchaseHistory()).next(),
          ),
        ),
        GoRoute(
          path: "brand/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (BrandProducts(slug: getParameter(state, "slug"))),
          ),
        ),
        GoRoute(
          path: "brands",
          name: "Brands",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: Filter(selected_filter: "brands")),
        ),
        GoRoute(
          path: "cart",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: AuthMiddleware(Cart()).next()),
        ),
        GoRoute(
          path: "categories",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (CategoryList(slug: getParameter(state, "slug"))),
          ),
        ),
        GoRoute(
          path: "category/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (CategoryProducts(slug: getParameter(state, "slug"))),
          ),
        ),
        GoRoute(
          path: "flash-deals",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (FlashDealList())),
        ),
        GoRoute(
          path: "flash-deal/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (FlashDealProducts(slug: getParameter(state, "slug"))),
          ),
        ),
        GoRoute(
          path: "followed-seller",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (FollowedSellers())),
        ),
        GoRoute(
          path: "purchase_history",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (OrderList())),
        ),
        GoRoute(
          path: "purchase_history/details/:id",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (OrderDetails(id: int.parse(getParameter(state, "id")))),
          ),
        ),
        GoRoute(
          path: "sellers",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (Filter(selected_filter: "sellers"))),
        ),
        GoRoute(
          path: "shop/:slug",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(
            child: (SellerDetails(slug: getParameter(state, "slug"))),
          ),
        ),
        GoRoute(
          path: "todays-deal",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (TodaysDealProducts())),
        ),
        GoRoute(
          path: "coupons",
          pageBuilder: (BuildContext context, GoRouterState state) => MaterialPage(child: (Coupons())),
        ),
      ],
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      if (OtherConfig.USE_PUSH_NOTIFICATION) {
        PushNotificationService().initialise();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => CartCounter()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => SelectAddressProvider()),
        ChangeNotifierProvider(
          create: (_) => UnReadNotificationCounter(),
        ),
        ChangeNotifierProvider(create: (_) => CurrencyPresenter()),
        ChangeNotifierProvider(create: (_) => HomePresenter()),
        ChangeNotifierProvider(create: (_) => BlogProvider()),
        ChangeNotifierProvider(create: (_) => PhotoProvider()),
        ChangeNotifierProvider(create: (_) => MyClassifiedProvider()),
      ],
      child: Consumer<LocaleProvider>(
        builder: (context, provider, snapshot) {
          return MaterialApp.router(
            builder: (context, child) {
              final locale = provider.locale;
              final lang = locale.languageCode.toLowerCase();
              final isRtl = lang == 'ar' || lang == 'fa' || lang == 'ur' || lang == 'he';
              final wrapped = Directionality(
                textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
                child: child!,
              );
              return OneContext().builder(context, wrapped);
            },
            routerConfig: routes,
            title: AppConfig.app_name,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: MyTheme.white,
              scaffoldBackgroundColor: MyTheme.white,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: "PublicSansSerif",
              textTheme: MyTheme.textTheme1,
              fontFamilyFallback: ['NotoSans'],
              scrollbarTheme: ScrollbarThemeData(
                thumbVisibility: WidgetStateProperty.all<bool>(false),
              ),
            ),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate,
            ],
            locale: provider.locale,
            supportedLocales: LangConfig().supportedLocales(),
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              if (deviceLocale != null && AppLocalizations.delegate.isSupported(deviceLocale)) {
                return deviceLocale;
              }
              return const Locale('ar');
            },
          );
        },
      ),
    );
  }
}
