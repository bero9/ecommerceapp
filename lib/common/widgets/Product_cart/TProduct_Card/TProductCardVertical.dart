import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/T_rounded_Image.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/Tshadow_Style.dart';
import '../../icon/TCircularIcon.dart';
import '../../layouts/Tproduct_Price_Text.dart';
import '../../text/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(16),
          color: dark ? Colors.grey[600] : Colors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail,Wishlist,Button,Discount Tag
            TrounddedContainer(
              height: 150,
              padding: const EdgeInsets.all(TSize.sm),
              background: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                      imageUrl: TImage.productcamera, applyImageRaduis: true),

                  ///---Sale Tag
                  Positioned(
                    top: 12,
                    child: TrounddedContainer(
                      radios: TSize.sm,
                      background: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: TSize.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),

                  ///favorate Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        dark: dark,
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            /// -- Details
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(
                    title: 'beatiful Black Camera',
                    smalsize: true,
                  ),
                  const SizedBox(
                    height: TSize.spaceBetweenItem / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Canon',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSize.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSize.iconxs,
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Price
                      const TProductPriceText(Price: '35.5'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(16),
                          )
                        ),
                        child: const SizedBox(
                          width: 32*1.2,
                          height: 32*1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

