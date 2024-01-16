import 'package:ecommerceapp/common/widgets/icon/TCircularIcon.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddCard extends StatelessWidget {
  const TBottomAddCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSize.Defaultspacing, vertical: TSize.Defaultspacing / 2),
      decoration: BoxDecoration(
          color: dark ? Colors.grey[800]! : TColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                dark: dark,
                icon: Iconsax.minus,
                backgroundColor: Colors.grey[800],
                widht: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(width: TSize.spaceBetweenItem,),
              Text('2', style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall,),
              const SizedBox(width: TSize.spaceBetweenItem,),
              TCircularIcon(
                dark: dark,
                icon: Iconsax.add,
                backgroundColor: Colors.grey[800],
                widht: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(TSize.md),
            backgroundColor: Colors.black,
            side: const BorderSide(color: Colors.black)
          ), child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
