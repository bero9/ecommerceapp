import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoader {
  static hideSnakBar()=>ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();



  static successSnackBar({required title,message ='',duration =3}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: TColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration ),
      margin: EdgeInsets.all(10),
      icon: Icon(Iconsax.check,color: Colors.white,),
    );
  }
static warningSnackBar({required title,message =''}){
  Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: Colors.white,
    backgroundColor: Colors.orange,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds:3 ),
    margin: EdgeInsets.all(20),
    icon: Icon(Iconsax.warning_2,color: Colors.white,),
  );
}
  static errorSnackBar({required title,message =''}){
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds:3 ),
      margin: EdgeInsets.all(20),
      icon: Icon(Iconsax.warning_2,color: Colors.white,),
    );
  }
}