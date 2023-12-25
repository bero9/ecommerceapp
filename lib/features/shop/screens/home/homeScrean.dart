import 'package:ecommerceapp/features/shop/screens/home/widget/home_Categories.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/common_widget_image_text/virtecal_image_text.dart';
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
          ],
        ),
      ),
    );
  }
}
