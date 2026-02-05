import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shimmer_helper.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:go_router/go_router.dart';

class FlashDealBanner extends StatelessWidget {
  final HomePresenter? homeData;
  final BuildContext? context;

  const FlashDealBanner({super.key, this.homeData, this.context});

  @override
  Widget build(BuildContext context) {
    // Null safety check for homeData
    if (homeData == null) {
      return SizedBox(
        height: 100,
        child: Center(child: Text('No data available')),
      );
    }

    // When data is loading and no images are available
    if (homeData!.isFlashDealInitial &&
        homeData!.flashDealBannerImageList.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18,
          top: 10,
          bottom: 20,
        ),
        child: ShimmerHelper().buildBasicShimmer(height: 120),
      );
    }
    // When banner images are available
    else if (homeData!.flashDealBannerImageList.isNotEmpty) {
      return CarouselSlider(
        options: CarouselOptions(
          height: 237,
          aspectRatio: 1,
          viewportFraction: .60,
          initialPage: 0,
          padEnds: false,
          enableInfiniteScroll: true,
          autoPlay: true,
          onPageChanged: (index, reason) {
            // Optionally handle page change
          },
        ),
        items: homeData!.flashDealBannerImageList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 0,
                  top: 0,
                  bottom: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    //   color: Colors.white, // background color for container
                    borderRadius: BorderRadius.circular(
                      10,
                    ), // rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0xff000000,
                        ).withOpacity(0.1), // shadow color
                        spreadRadius: 2, // spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      10,
                    ), // round corners for the image too
                    child: InkWell(
                      onTap: () {
                        // Null safety for URL and handle it properly
                        var url = i.url?.split(AppConfig.DOMAIN_PATH).last;
                        if (url != null && url.isNotEmpty) {
                          final router = GoRouter.of(context);
                          router.go(url);

                          // اطبع اسم الروت (لو متعرف بالـ name)
                          final routeMatch =
                              router.routerDelegate.currentConfiguration.last;
                          print(
                              "Navigated to screen: ${routeMatch.route.path}");
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid URL')),
                          );
                        }
                      },
                      child: i.photo == null || (i.photo?.isEmpty ?? true)
                          ? Image.asset(
                              'assets/placeholder_rectangle.png',
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              i.photo!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stack) =>
                                  Image.asset(
                                'assets/placeholder_rectangle.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                      // Display the image with rounded corners
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      );
    }
    // When images are not found and loading is complete
    else if (!homeData!.isFlashDealInitial &&
        homeData!.flashDealBannerImageList.isEmpty) {
      return SizedBox(
        height: 100,
        child: Center(
          child: Text(
            AppLocalizations.of(context).no_carousel_image_found,
            style: TextStyle(color: MyTheme.font_grey),
          ),
        ),
      );
    }
    // Default container if no condition matches
    else {
      return Container(height: 100);
    }
  }
}
