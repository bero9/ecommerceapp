import 'package:ecommerceapp/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';
class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
        right:  TSize.Defaultspacing,
        bottom: TDeviceUtils.getBottomNavigationBarHeigh(),
        child: ElevatedButton(
          onPressed: (){
            OnBoarderController.instance.nextPage();
          },
          style: ElevatedButton.styleFrom(shape: const CircleBorder() ,backgroundColor: dark?TColors.primary:Colors.black),
          child :const Icon(Icons.keyboard_arrow_right),
        ));
  }
}