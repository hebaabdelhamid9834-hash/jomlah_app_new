import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shimmer_helper.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeCarouselSlider extends StatelessWidget {
  final HomePresenter? homeData;
  final BuildContext? context;

  const HomeCarouselSlider({super.key, this.homeData, this.context});

  @override
  Widget build(BuildContext context) {
    if (homeData!.isCarouselInitial && homeData!.carouselImageList.isEmpty) {
      print("home data slider is empty");
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ShimmerHelper().buildBasicShimmer(height: 120),
      );
    } else if (homeData!.carouselImageList.isNotEmpty) {
      print("slider ${homeData!.carouselImageList.length}");

      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 30,
              spreadRadius: 0.5,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: CarouselSlider(
          options: CarouselOptions(
            reverse: false,
            aspectRatio: 338 / 140,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.easeInExpo,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          ),
          items: homeData?.carouselImageList.map((i) {
            print("slider ${i.photo}");

            return Builder(
              key: UniqueKey(), // Ensure each item has a unique key
              builder: (BuildContext context) {
                print("Image URL =====> ${i.photo}");

                // final String fullUrl = (i.photo ?? "").startsWith("http") ? i.photo! : "${AppConfig.BASE_URL}${i.photo}";

                return SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: InkWell(
                    onTap: () {
                      var url = i.url?.split(AppConfig.DOMAIN_PATH).last ?? "";
                      print("Navigate to: $url");
                      GoRouter.of(context).go(url);
                    },
                    child: Image.network(
                     i.photo?? 'https://jomlah.com/public/assets/img/placeholder.jpg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Image.asset("assets/banner.png"),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      );
    } else if (!homeData!.isCarouselInitial && homeData!.carouselImageList.isEmpty) {
      return SizedBox(
        height: 100,
        child: Center(
          child: Text(
            AppLocalizations.of(context).no_carousel_image_found,
            style: TextStyle(color: MyTheme.font_grey),
          ),
        ),
      );
    } else {
      return Container(height: 100);
    }
  }
}
