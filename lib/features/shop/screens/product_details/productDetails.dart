import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/Widget/Product_Meta_Data.dart';
import 'package:ecommerceapp/features/shop/screens/product_review/productReview.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'Widget/TBottom_Add_Card.dart';
import 'Widget/TRating_and_Share.dart';
import 'Widget/productImageSlider.dart';
import 'Widget/product_attributes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product Slider
            TproductImageSlider(dark: dark),

            ///Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSize.Defaultspacing,
                  left: TSize.Defaultspacing,
                  bottom: TSize.Defaultspacing),
              child: Column(
                children: [
                  ///Rating and share button
                  const TRating_and_Share(),

                  ///price title stock & brand
                  const TProductMetaData(),

                  ///Atributes
                  const TproductAttribute(),
                  const SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///Checkout Bottom
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('CheckOut'),
                    ),
                  ),
                  const SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///Description
                  const TSeactionHeading(
                    title: 'Description',
                    showActionButtom: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBetweenItem,
                  ),
                  const ReadMoreText(
                    'The Canon EOS R6 Mark II is the best Canon camera weve tested. The Mark II takes everything that makes the original Canon EOS R6 great and adds a higher-resolution sensor, faster e-shutter burst shooting, uncropped 4k video, and no recording time limit.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: TSize.spaceBetweenItem,
                  ),
                  Row(
                    children: [
                      const TSeactionHeading(title: 'Reviews(1999)',showActionButtom: false,),
                      IconButton(onPressed: ()=>Get.to(()=>const ProductReviewScrean()), icon: const Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                  const SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///Review
                ],
              ),
            )

            ///Rating

            ///Share Button
          ],
        ),
      ),
    );
  }
}
