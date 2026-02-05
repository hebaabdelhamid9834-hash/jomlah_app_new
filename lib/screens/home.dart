import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/custom/feature_categories_widget.dart';
import 'package:active_ecommerce_cms_demo_app/custom/featured_product_horizontal_list_widget.dart';
import 'package:active_ecommerce_cms_demo_app/custom/flash%20deals%20banner/flash_deal_banner.dart';
import 'package:active_ecommerce_cms_demo_app/custom/home_all_products_2.dart';
import 'package:active_ecommerce_cms_demo_app/custom/home_banner_one.dart';
import 'package:active_ecommerce_cms_demo_app/custom/home_carousel_slider.dart';
import 'package:active_ecommerce_cms_demo_app/custom/home_search_box.dart';
import 'package:active_ecommerce_cms_demo_app/custom/pirated_widget.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shimmer_helper.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:active_ecommerce_cms_demo_app/screens/filter.dart';
import 'package:active_ecommerce_cms_demo_app/screens/flash_deal/flash_deal_list.dart';
import 'package:active_ecommerce_cms_demo_app/screens/product/todays_deal_products.dart';
import 'package:active_ecommerce_cms_demo_app/screens/top_sellers.dart';
import 'package:active_ecommerce_cms_demo_app/single_banner/sincle_banner_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    this.title,
    this.show_back_button = false,
    this.go_back = true,
  });

  final String? title;
  final bool show_back_button;
  final bool go_back;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomePresenter homeData = HomePresenter();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchData();
      // REASON: Pre-cache critical images to prevent loading jank on first appearance.
      precacheImage(const AssetImage("assets/todays_deal.png"), context);
      precacheImage(const AssetImage("assets/flash_deal.png"), context);
      precacheImage(const AssetImage("assets/brands.png"), context);
      precacheImage(const AssetImage("assets/top_sellers.png"), context);
    });
    homeData.mainScrollListener();
    homeData.initPiratedAnimation(this);
  }

  Future<void> _fetchData() {
    return homeData.onRefresh();
  }

  @override
  void dispose() {
    homeData.pirated_logo_controller.dispose();
    homeData.mainScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => widget.go_back,
      child: Directionality(
        textDirection: app_language_rtl.$! ? TextDirection.rtl : TextDirection.ltr,
        child: SafeArea(
          child: Scaffold(
            appBar: const _HomeAppBar(),
            backgroundColor: Colors.white,
            // REASON: The main structure (Stack, RefreshIndicator, CustomScrollView) is now static.
            // We removed the top-level ListenableBuilder to prevent rebuilding the entire screen
            // for every small change in the HomePresenter.
            body: Stack(
              children: [
                RefreshIndicator(
                  color: MyTheme.accent_color,
                  backgroundColor: Colors.white,
                  onRefresh: _fetchData,
                  displacement: 0,
                  child: CustomScrollView(
                    controller: homeData.mainScrollController,
                    physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: <Widget>[
                      // REASON: This section contains multiple dynamic widgets.
                      // Instead of one builder, we wrap each dynamic part below.
                      _buildHeaderSection(context, homeData),
                      // REASON: Wrap each dynamic section in its own builder
                      // to ensure only that part rebuilds when its data changes.
                      ListenableBuilder(
                        listenable: homeData,
                        builder: (context, child) => _buildFeaturedCategoriesSection(context, homeData),
                      ),
                      ListenableBuilder(
                        listenable: homeData,
                        builder: (context, child) {
                          return homeData.isFlashDeal ? _buildFlashDealSection(context, homeData) : const SliverToBoxAdapter(child: SizedBox.shrink());
                        },
                      ),
                      const SliverList(
                        delegate: SliverChildListDelegate.fixed([PhotoWidget()]),
                      ),
                      ListenableBuilder(
                        listenable: homeData,
                        builder: (context, child) => _buildFeaturedProductsSection(context, homeData),
                      ),
                      ListenableBuilder(
                        listenable: homeData,
                        builder: (context, child) => _buildAllProductsSection(context, homeData),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  // REASON: This loading container needs its own builder
                  // to show/hide without rebuilding anything else.
                  child: ListenableBuilder(
                    listenable: homeData,
                    builder: (context, child) => _buildProductLoadingContainer(context, homeData),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SliverList _buildHeaderSection(BuildContext context, HomePresenter homeData) {
    return SliverList(
      delegate: SliverChildListDelegate([
        if (AppConfig.purchase_code == "") PiratedWidget(homeData: homeData),
        const SizedBox(height: 2),
        const SizedBox(height: 8),
        // REASON: Carousel data is fetched asynchronously. Wrap it in a builder.
        ListenableBuilder(
          listenable: homeData,
          builder: (context, child) => HomeCarouselSlider(homeData: homeData,),
        ),
        const SizedBox(height: 16),
        // REASON: Menu items can be conditional. Wrap in a builder.
        ListenableBuilder(
          listenable: homeData,
          builder: (context, child) => _HomeMenu(homeData: homeData),
        ),
        const SizedBox(height: 16),
        // REASON: Banner data is also fetched. Wrap it in a builder.
        ListenableBuilder(
          listenable: homeData,
          builder: (context, child) => HomeBannerOne(context: context, homeData: homeData),
        ),
      ]),
    );
  }

  SliverToBoxAdapter _buildFeaturedCategoriesSection(BuildContext context, HomePresenter homeData) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 18.0, 0.0),
            child: Text(
              AppLocalizations.of(context).featured_categories_ucf,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 195,
            child: FeaturedCategoriesWidget(homeData: homeData),
          ),
        ],
      ),
    );
  }

  SliverList _buildFlashDealSection(BuildContext context, HomePresenter homeData) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            "AppLocalizations.of(context).flash_deals_ucf",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 10),
        FlashDealBanner(context: context, homeData: homeData),
      ]),
    );
  }

  SliverList _buildFeaturedProductsSection(BuildContext context, HomePresenter homeData) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          height: 305,
          color: const Color(0xffF2F1F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 0, 0),
                child: Text(
                  AppLocalizations.of(context).featured_products_ucf,
                  style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: FeaturedProductHorizontalListWidget(homeData: homeData),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  SliverList _buildAllProductsSection(BuildContext context, HomePresenter homeData) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          color: const Color(0xffF2F1F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 0.0, 20.0, 0.0),
                child: Text(
                  AppLocalizations.of(context).all_products_ucf,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              HomeAllProducts2(homeData: homeData),
            ],
          ),
        ),
        const SizedBox(height: 80),
      ]),
    );
  }

  Widget _buildProductLoadingContainer(BuildContext context, HomePresenter homeData) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: homeData.showAllLoadingContainer ? 36 : 0,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Text(
          homeData.totalAllProductData == homeData.allProductList.length ? AppLocalizations.of(context).no_more_products_ucf : AppLocalizations.of(context).loading_more_products_ucf,
        ),
      ),
    );
  }
}

// Extracted AppBar to a const-constructible StatelessWidget
class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      centerTitle: false,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Filter()));
          },
          child: HomeSearchBox(context: context),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// Extracted Home Menu to a StatelessWidget for better performance
class _HomeMenu extends StatelessWidget {
  final HomePresenter homeData;

  const _HomeMenu({required this.homeData});

  @override
  Widget build(BuildContext context) {
    // Shimmer effect while loading
    if (!homeData.isFlashDeal && !homeData.isTodayDeal) {
      return SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ShimmerHelper().buildHorizontalGridShimmerWithAxisCount(
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            item_count: 4,
            mainAxisExtent: 40.0,
          ),
        ),
      );
    }

    final List<Map<String, dynamic>> menuItems = _getMenuItems(context);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          scrollDirection: Axis.horizontal,
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            // containerColor removed: gradients provided in the menu item map are used instead

            return Padding(
              padding: const EdgeInsets.only(right: 12,),
              child: Container(
                // Container provides the shadow and visible white border; Material provides the ink ripple
                padding: const EdgeInsets.all(1.0), // inset the Material so the border is visible
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // Use a softer, smaller shadow appropriate for compact pill buttons
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.08),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  border: Border.all(color: MyTheme.white, width: 2),
                ),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: item['onTap'],
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: item['gradient'] ?? MyTheme.buildLinearGradient2(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 88, maxWidth: 160, minHeight: 40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Semantics(
                                label: item['title'],
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(color: MyTheme.white, width: 1.5),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 18,
                                      height: 18,
                                      child: ClipOval(
                                        child: Image.asset(
                                          item['image'],
                                          color: item['textColor'],
                                          width: 18,
                                          height: 18,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  item['title'],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: item['textColor'],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getMenuItems(BuildContext context) {
    return [
      if (homeData.isTodayDeal)
        {
          "title": AppLocalizations.of(context).todays_deal_ucf,
          "image": "assets/todays_deal.png",
          "onTap": () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TodaysDealProducts())),
          "textColor": Colors.white,
          "gradient": MyTheme.buildLinearGradient1(), // warm red gradient for today's deal
        },
      if (homeData.isFlashDeal)
        {
          "title": AppLocalizations.of(context).flash_deal_ucf,
          "image": "assets/flash_deal.png",
          "onTap": () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FlashDealList())),
          "textColor": Colors.white,
          "gradient": MyTheme.buildLinearGradient1(), // match deal emphasis
        },
      {
        "title": AppLocalizations.of(context).brands_ucf,
        "image": "assets/brands.png",
        "onTap": () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Filter(selected_filter: "brands"))),
        "textColor": Colors.white,
        "gradient": MyTheme.buildLinearGradient3(), // bluish gradient for brands
      },
      if (vendor_system.$)
        {
          "title": AppLocalizations.of(context).top_sellers_ucf,
          "image": "assets/top_sellers.png",
          "onTap": () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TopSellers())),
          "textColor": Colors.white,
          // "gradient": MyTheme.buildLinearGradient(),
        },
    ];
  }
}
