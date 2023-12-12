import 'package:ecommerceapp/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:ecommerceapp/features/authentication/screens/on_boarding/widgets/OnBoargingDotNavigation.dart';
import 'package:ecommerceapp/features/authentication/screens/on_boarding/widgets/onBoarderSkip.dart';
import 'package:ecommerceapp/features/authentication/screens/on_boarding/widgets/onBoardingNextButton.dart';
import 'package:ecommerceapp/features/authentication/screens/on_boarding/widgets/onBoardingPage.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constans/Image_Strings.dart';
import '../../../../utils/constans/Text.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/devices/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //OnBoarding Controller to handle login
    final controller = Get.put(OnBoarderController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImage.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingsubTitle1,
              ),
              OnBoardingPage(
                image: TImage.onBoardingImage2,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingsubTitle2,
              ),
              OnBoardingPage(
                image: TImage.onBoardingImage3,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingsubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoargingDotNavigation(),
          //Circular Button//
          const onBoardingNextButton(),
        ],
      ),
    );
  }
}
