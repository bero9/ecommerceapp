
import 'package:flutter/material.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import 'TBrand_Card.dart';
import '../custom_shap/containers/rounded_container.dart';

class TBrandShadowCase extends StatelessWidget {
  const TBrandShadowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TrounddedContainer(
      padding: const EdgeInsets.all(TSize.md),
      showBorder: true,
      borderColor: Colors.grey[600]!,
      background: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSize.spaceBetweenItem),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSize.spaceBetweenItem,),
          Row(
            children: [
              TrounddedContainer(
                height: 100,
                background: THelperFunction.isDarkMode(context) ? Colors
                    .grey[600]! : TColors.light,
              )
            ],
          ),
          Row(
            children:
            images.map((image) => brandTopProductImageWidget(image, context)).toList(),

          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(child:
  TrounddedContainer(
    height: 100,
    padding: const EdgeInsets.all(TSize.md),
    margin: const EdgeInsets.only(right: TSize.sm),
    background: THelperFunction.isDarkMode(context)
        ? Colors.grey[600]!
        : Colors.white,
    child: Image(fit:BoxFit.contain, image: AssetImage(image),),
  ));
}
