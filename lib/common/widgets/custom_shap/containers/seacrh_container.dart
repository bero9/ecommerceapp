import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap, this.padding =const EdgeInsets.symmetric(horizontal: TSize.Defaultspacing),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreanWidht(context),
          padding: const EdgeInsets.all(TSize.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                ? TColors.dark
                : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: showBorder ? Border.all(color: Colors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey[800],
              ),
              const SizedBox(
                width: TSize.spaceBetweenItem,
              ),
              Text(
                text,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
