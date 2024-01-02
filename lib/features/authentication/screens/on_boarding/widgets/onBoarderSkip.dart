 import 'package:ecommerceapp/features/authentication/screens/login/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          onPressed: () => Get.to(()=>const LoginScreen()),
          child: const Text("Skip"),
        ));
  }
}
