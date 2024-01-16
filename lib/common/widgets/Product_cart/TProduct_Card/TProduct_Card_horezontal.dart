import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/T_rounded_Image.dart';
import 'package:ecommerceapp/common/widgets/text/TBrandTitleWithVerefiedIcon.dart';
import 'package:ecommerceapp/common/widgets/text/Tproduct_Price_Text.dart';
import 'package:ecommerceapp/common/widgets/text/product_title_text.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/helper_function.dart';
import '../../icon/TCircularIcon.dart';

class TProductCardhorezontal extends StatelessWidget {
  const TProductCardhorezontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(16),
        color: dark ? Colors.grey[800] : Colors.white,
      ),
      child: Row(
        children: [
          TrounddedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSize.sm),
            background: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  width: 120,height: 120
                  ,child: TRoundedImage(
                     imageUrl: TImage.productcamera,
                    applyImageRaduis: true,
                  ),
                ),
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

                ///favorite Icon Button
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
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSize.sm,left: TSize.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'Black Canon Camera', smalsize: true,),
                      SizedBox(height: TSize.spacing_between_sections/2,),
                      TBrandTitleWithVerefiedIcon(title: 'Canon'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Flexible(child: TProductPriceText(Price: '35',)),
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(16),
                            )),
                        child: const SizedBox(
                          width: 32 * 1.2,
                          height: 32 * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
