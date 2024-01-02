import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constans/enums.dart';
import '../../../utils/constans/sizes.dart';
import '../custom_shap/containers/rounded_container.dart';
import '../text/TBrandTitleWithVerefiedIcon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TrounddedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: showBorder,
        background: Colors.transparent,
        child: Row(
          children: [
            ///Icon

            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Iconsax.airplane,
              ),
            ),
            // child: TCircularImage(
            //   imageUrl: TImage.googleLogo,
            //   isNetworkImage: false,
            //   background: Colors.transparent,
            //   overlayColor:
            //       THelperFunction.isDarkMode(context)
            //           ? Colors.white
            //           : Colors.black,
            // ),

            const SizedBox(
              height: TSize.spaceBetweenItem / 2,
            ),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerefiedIcon(
                    title: 'Canon',
                    textSize: TextSize.large,
                  ),
                  Text(
                    '256 product',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
