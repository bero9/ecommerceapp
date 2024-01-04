import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/TCircularImage.dart';
import 'package:ecommerceapp/common/widgets/text/TBrandTitleWithVerefiedIcon.dart';
import 'package:ecommerceapp/common/widgets/text/Tproduct_Price_Text.dart';
import 'package:ecommerceapp/common/widgets/text/product_title_text.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/enums.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ///sate Tag
            TrounddedContainer(
              radios: TSize.sm,
              background: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                  horizontal: TSize.sm, vertical: TSize.xs),
              child: Text(
                '  25%  ',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            SizedBox(
              width: TSize.spaceBetweenItem,
            ),
            Text(
              ' \$250  ',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: TSize.spaceBetweenItem,
            ),
            TProductPriceText(
              Price: ' 175',
              isLarg: true,
            )
          ],
        ),
        SizedBox(
          height: TSize.spaceBetweenItem / 1.5,
        ),

        ///title
        TProductTitleText(title: 'Black Canon Camera'),
        SizedBox(
          height: TSize.spaceBetweenItem / 1.5,
        ),

        ///stock status,
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            Text(' In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        SizedBox(
          height: TSize.spaceBetweenItem / 1.5,
        ),

        ///Brand
        Row(
          children: [
            TCircularImage(

              imageUrl: TImage.productcamera,
              width: 32,
              height: 32,
              overlayColor: darkMode?Colors.white:Colors.black,
            ),
            TBrandTitleWithVerefiedIcon(
                title: 'Canon',
                textSize: TextSize.medium,
              ),

          ],
        )
      ],
    );
  }
}
