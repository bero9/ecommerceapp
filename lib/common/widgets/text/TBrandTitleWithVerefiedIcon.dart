import 'package:ecommerceapp/utils/constans/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/sizes.dart';
import 'TBrandTitletext.dart';

class TBrandTitleWithVerefiedIcon extends StatelessWidget {
  const TBrandTitleWithVerefiedIcon({
    super.key,
    required this.title,
     this.maxLine=1,
    this.textColor,
    this.iconColor=TColors.primary,
    this.textAlign= TextAlign.center,
    this.textSize=TextSize.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSize? textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitletext(
            title: title,
            color: textColor,
            maxLine: maxLine,
            textAlign: textAlign,
            brandtextSize: textSize,
          ),
        ),
        const SizedBox(width: TSize.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSize.iconxs,
        )
      ],
    );
  }
}
