import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';
class OnBoargingDotNavigation extends StatelessWidget {
  const OnBoargingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    final conroller = OnBoarderController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeigh() + 25,
        left: TSize.Defaultspacing,

        child: SmoothPageIndicator(

          effect:ExpandingDotsEffect(activeDotColor: dark? TColors.light: TColors.dark,dotHeight: 6),
          controller: conroller.pageController,
          onDotClicked: conroller.dotNavigationClick,

          count: 3,
        ));
  }
}