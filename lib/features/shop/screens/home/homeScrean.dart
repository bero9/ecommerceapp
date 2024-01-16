import 'package:ecommerceapp/features/shop/screens/all_product/all_product.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/home_Categories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/promo_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/Product_cart/TProduct_Card/TProductCardVertical.dart';
import '../../../../common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import '../../../../common/widgets/custom_shap/containers/seacrh_container.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/text/Section_Heading.dart';
import '../../../../utils/constans/Image_Strings.dart';
import '../../../../utils/constans/sizes.dart';

import 'widget/home_app_bar.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPramaryHeaderContainar(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),

                  SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///SearchBar
                  TSearchContainer(
                    text: "Search in store",
                  ),
                  SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSize.Defaultspacing),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TSeactionHeading(
                          title: 'Popular Categories',
                          showActionButtom: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSize.spacing_between_sections,
                        ),

                        ///Categories
                        THomeCategories(),
                        SizedBox(height: TSize.spacing_between_sections,)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Body
            Padding(
                padding: const EdgeInsets.all(TSize.Defaultspacing),
                child: Column(
                  children: [
                   /// ---- Promo Slider
                    const TPromoSlider(
                      banners: [TImage.car2, TImage.car3, TImage.car4],
                    ),
                    const SizedBox(
                      height: TSize.spacing_between_sections,
                    ),
                    /// ---Heading
                     TSeactionHeading(title: 'Popular Product',onPressd: ()=>Get.to(()=>const TAllProduct()),),
                    const SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),
                    /// ---Popular Product
                    TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical(),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
