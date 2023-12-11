import 'package:ecommerceapp/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeigh(),
        right: TSize.Defaultspacing,
        child: TextButton(
          onPressed: () => OnBoarderController.instance.skipPage(),
          child: const Text("Skip"),
        ));
  }
}
