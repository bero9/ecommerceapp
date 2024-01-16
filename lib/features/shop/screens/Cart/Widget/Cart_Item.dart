import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/T_rounded_Image.dart';
import '../../../../../common/widgets/text/TBrandTitleWithVerefiedIcon.dart';
import '../../../../../common/widgets/text/product_title_text.dart';
import '../../../../../utils/constans/Image_Strings.dart';
import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImage.productcamera,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSize.sm),
          background: THelperFunction.isDarkMode(context)
              ? Colors.grey[800]!
              : TColors.light,
        ),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerefiedIcon(title: 'Canon'),
              const Flexible(child: TProductTitleText(title: 'Black Canon Camera')),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '42', style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
