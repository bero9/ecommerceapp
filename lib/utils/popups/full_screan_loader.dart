import 'package:ecommerceapp/common/widgets/loader/animation_loader.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreanLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: THelperFunction.isDarkMode(Get.context!)
                  ? TColors.dark
                  : Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250,),
                 TAnimationLoaderWidget(animation: animation, text: text)
                ],
              ),
            )));
  }

  static stopLoading (){
    Navigator.of(Get.overlayContext!).pop();
  }
}
