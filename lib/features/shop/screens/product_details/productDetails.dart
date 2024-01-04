import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/custom_shap/curved_edges/curved_edger_widget.dart';
import 'package:ecommerceapp/common/widgets/icon/TCircularIcon.dart';
import 'package:ecommerceapp/common/widgets/images/TCircularImage.dart';
import 'package:ecommerceapp/common/widgets/images/T_rounded_Image.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/Widget/Product_Meta_Data.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Widget/TRating_and_Share.dart';
import 'Widget/productImageSlider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///product Slider
            TproductImageSlider(dark: dark),

            ///Product Details
            Padding(padding: EdgeInsets.only(right: TSize.Defaultspacing,
                left: TSize.Defaultspacing,
                bottom: TSize.Defaultspacing),
            child:Column(
              children: [
                ///Rating and share button
                TRating_and_Share(),
                ///price title stock & brand
              TProductMetaData()
              ],
              ///Atributes


              ///Checkout Bottom



              ///Description


              ///Review
            ) ,)

            ///Rating

            ///Share Button
          ],
        ),
      ),
    );
  }

}
