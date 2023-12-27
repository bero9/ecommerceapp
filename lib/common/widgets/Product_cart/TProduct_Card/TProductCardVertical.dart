import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../styles/Tshadow_Style.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunction.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(16),
        color: dark? Colors.grey[600] :Colors.white,
      ),
      child: Column(
        children: [
          ///Thumbnail,Wishlist,Button,Discount Tag
TrounddedContainer(
  height: 180,
  padding: const EdgeInsets.all(TSize.sm),
  background: dark?TColors.dark:TColors.light,
)

          /// -- Details
        ],
      ),
    );
  }
}
