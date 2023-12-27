import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/widgets/custom_shap/containers/circular_container.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/home_Categories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/promo_slider.dart';

import 'package:flutter/material.dart';

import '../../../../common/widgets/Product_cart/TProduct_Card/TProductCardVertical.dart';
import '../../../../common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import '../../../../common/widgets/custom_shap/containers/seacrh_container.dart';

import '../../../../common/widgets/text/Section_Heading.dart';
import '../../../../utils/constans/Image_Strings.dart';
import '../../../../utils/constans/sizes.dart';

import 'widget/home_app_bar.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPramaryHeaderContainar(
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

                  ///Categorties
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

                        ///Categorties
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Body
            Padding(
                padding: EdgeInsets.all(TSize.Defaultspacing),
                child: TPromoSlider(banners: [TImage.car2,TImage.car3,TImage.car4],)),
            TProductCardVertical(),
          ],
        ),
      ),
    );
  }
}
