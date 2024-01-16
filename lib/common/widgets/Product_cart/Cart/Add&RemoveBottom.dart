
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';
import '../../icon/TCircularIcon.dart';

class TProductQuantityAdder extends StatelessWidget {
  const TProductQuantityAdder({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          dark: dark,
          icon: Iconsax.minus,
          widht: 32,
          height: 32,
          size: TSize.md,
          color: dark ? Colors.white : Colors.black,
          backgroundColor: dark ? Colors.grey[800]! : TColors.light,
        ),
        const SizedBox(
          width: TSize.spaceBetweenItem,
        ),
        Text('2' ,style: Theme.of(context).textTheme.titleLarge,),
        const SizedBox(
          width: TSize.spaceBetweenItem,
        ),
        TCircularIcon(
          dark: dark,
          icon: Iconsax.add,
          widht: 32,
          height: 32,
          size: TSize.md,
          color: Colors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
