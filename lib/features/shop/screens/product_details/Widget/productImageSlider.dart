
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_Bar/appBar.dart';
import '../../../../../common/widgets/custom_shap/curved_edges/curved_edger_widget.dart';
import '../../../../../common/widgets/icon/TCircularIcon.dart';
import '../../../../../common/widgets/images/T_rounded_Image.dart';
import '../../../../../utils/constans/Image_Strings.dart';
import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';

class TproductImageSlider extends StatelessWidget {
  const TproductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? Colors.grey[700]! : Colors.white,
        child: Stack(
          children: [
            ///
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Image(
                    image: AssetImage(TImage.productcamera),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 24,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: TSize.spaceBetweenItem,
                    ),
                    itemCount: 6,
                    itemBuilder: (_, index) => TRoundedImage(
                      imageUrl: TImage.productcamera,
                      width: 80,
                      background: dark ? TColors.dark : TColors.light,
                      border: Border.all(color: TColors.primary),
                    )),
              ),
            ),
            TAppBar(
              showBackArrow: true,
              action: [
                TCircularIcon(dark: dark, icon: Iconsax.heart5 ,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
