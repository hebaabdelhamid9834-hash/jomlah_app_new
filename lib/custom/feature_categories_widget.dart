import 'package:active_ecommerce_cms_demo_app/helpers/shimmer_helper.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/presenter/home_presenter.dart';
import 'package:active_ecommerce_cms_demo_app/screens/category_list_n_product/category_products.dart';
import 'package:flutter/material.dart';

class FeaturedCategoriesWidget extends StatelessWidget {
  final HomePresenter homeData;
  const FeaturedCategoriesWidget({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    if (homeData.featuredCategoryList.isNotEmpty) {
      print("home data categories ${homeData.featuredCategoryList[1].coverImage ?? ''}");
      return GridView.builder(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 11, bottom: 24),
        shrinkWrap: true,
        primary: false,
        scrollDirection: Axis.horizontal,
        controller: homeData.featuredCategoryScrollController,
        itemCount: homeData.featuredCategoryList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 1, crossAxisSpacing: 12, mainAxisSpacing: 12, mainAxisExtent: 170.0),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CategoryProducts(
                        slug: homeData.featuredCategoryList[index].slug,
                      );
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff000000).withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 15,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/placeholder.png',
                            image: homeData.featuredCategoryList[index].coverImage ?? '',
                            fit: BoxFit.cover,
                          ),
                        ),
                        //  decoration: BoxDecoration(
                        //      image: DecorationImage(
                        //          image: AssetImage('assets/p1.PNG'),
                      )),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      homeData.featuredCategoryList[index].name,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12,
                        color: MyTheme.font_grey,
                      ),
                    ),
                  ),
                ],
              ));
        },
      );
    }
    if (homeData.isCategoryInitial) {
      return ShimmerHelper().buildHorizontalGridShimmerWithAxisCount(crossAxisSpacing: 12.0, mainAxisSpacing: 12.0, item_count: 10, mainAxisExtent: 170.0, controller: homeData.featuredCategoryScrollController);
    }

    return SizedBox(
      height: 100,
      child: Center(
        child: Text(
          AppLocalizations.of(context).no_category_found,
          style: TextStyle(color: MyTheme.font_grey),
        ),
      ),
    );
  }
}
