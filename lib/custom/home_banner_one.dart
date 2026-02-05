// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
// import 'package:go_router/go_router.dart';
//
// import '../app_config.dart';
// import '../helpers/shimmer_helper.dart';
// import '../my_theme.dart';
// import '../presenter/home_presenter.dart';
// import 'aiz_image.dart';
//
// class HomeBannerOne extends StatelessWidget {
//   final HomePresenter? homeData;
//   final BuildContext? context;
//
//   const HomeBannerOne({super.key, this.homeData, this.context});
//
//   @override
//   Widget build(BuildContext context) {
//     // Null safety check for homeData
//     if (homeData == null) {
//       return SizedBox(
//         height: 100,
//         child: Center(child: Text('No data available')),
//       );
//     }
//
//     // When data is loading and no images are available
//     if (homeData!.isBannerOneInitial && homeData!.bannerOneImageList.isEmpty) {
//       return Padding(
//         padding: const EdgeInsets.only(
//           left: 18.0,
//           right: 18,
//           top: 10,
//           bottom: 20,
//         ),
//         child: ShimmerHelper().buildBasicShimmer(height: 120),
//       );
//     }
//     // When banner images are available
//     else if (homeData!.bannerOneImageList.isNotEmpty) {
//       return CarouselSlider(
//         options: CarouselOptions(
//           height: 166,
//           aspectRatio: 1.1,
//           viewportFraction: .43,
//           initialPage: 0,
//           padEnds: false,
//           enableInfiniteScroll: true,
//           autoPlay: true,
//           onPageChanged: (index, reason) {
//             // Optionally handle page change
//           },
//         ),
//         items:
//             homeData!.bannerOneImageList.map((i) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Padding(
//                     padding: const EdgeInsets.only(
//                       left: 12,
//                       right: 0,
//                       top: 0,
//                       bottom: 10,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white, // background color for container
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ), // rounded corners
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color(
//                               0xff000000,
//                             ).withOpacity(0.1), // shadow color
//                             spreadRadius: 2, // spread radius
//                             blurRadius: 5, // blur radius
//                             offset: Offset(0, 3), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ), // round corners for the image too
//                         child: InkWell(
//                           onTap: () {
//                             // Null safety for URL and handle it properly
//                             var url =
//                                 i.url?.split(AppConfig.DOMAIN_PATH).last;
//                             if (url != null && url.isNotEmpty) {
//                               GoRouter.of(context).go(url);
//                             } else {
//                               // Handle invalid or empty URL case
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text('Invalid URL')),
//                               );
//                             }
//                           },
//                           child: AIZImage.radiusImage(
//                             i.photo,
//                             6,
//                           ), // Display the image with rounded corners
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//       );
//     }
//     // When images are not found and loading is complete
//     else if (!homeData!.isBannerOneInitial &&
//         homeData!.bannerOneImageList.isEmpty) {
//       return SizedBox(
//         height: 100,
//         child: Center(
//           child: Text(
//             AppLocalizations.of(context).no_carousel_image_found,
//             style: TextStyle(color: MyTheme.font_grey),
//           ),
//         ),
//       );
//     }
//     // Default container if no condition matches
//     else {
//       return Container(height: 100);
//     }
//   }
// }
import 'package:active_ecommerce_cms_demo_app/custom/aiz_image.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shimmer_helper.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBannerOne extends StatelessWidget {
  final HomePresenter? homeData;
  final BuildContext? context;

  const HomeBannerOne({super.key, this.homeData, this.context});

  @override
  Widget build(BuildContext context) {
    if (homeData == null) {
      return const SizedBox(
        height: 100,
        child: Center(child: Text('No data available')),
      );
    }

    // حالة التحميل
    if (homeData!.isBannerOneInitial && homeData!.bannerOneImageList.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18, top: 10, bottom: 20),
        child: ShimmerHelper().buildBasicShimmer(height: 120),
      );
    }

    // حالة وجود صور للبانر
    if (homeData!.bannerOneImageList.isNotEmpty) {
      return CarouselSlider(
        options: CarouselOptions(
          height: 166,
          aspectRatio: 1.1,
          viewportFraction: .43,
          initialPage: 0,
          padEnds: false,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
        items: homeData!.bannerOneImageList.map((bannerItem) {
          return Builder(
            key: UniqueKey(),
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        final String? fullUrl = bannerItem.url;

                        if (fullUrl == null || fullUrl.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('No link available')),
                          );
                          return;
                        }

                        try {
                          final Uri uri = Uri.parse(fullUrl);

                          if (uri.pathSegments.isEmpty) return;

                          final String slug = uri.pathSegments.last;

                          if (uri.path.contains('/category/')) {
                            GoRouter.of(context).push('/category/$slug');
                          } else if (uri.path.contains('/product/')) {
                            GoRouter.of(context).push('/product/$slug');
                          } else if (uri.path.contains('/brand/')) {
                            GoRouter.of(context).push('/brand/$slug');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Unknown link type')),
                            );
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Invalid link: $e')),
                          );
                        }
                      },
                      child: AIZImage.radiusImage(bannerItem.photo, 6),
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      );
    }

    // حالة لا يوجد صور بعد التحميل
    if (!homeData!.isBannerOneInitial && homeData!.bannerOneImageList.isEmpty) {
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

    return Container(height: 100);
  }
}
