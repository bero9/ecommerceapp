import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/Login.dart';

class OnBoarderController extends GetxController {
  static OnBoarderController get instance => Get.find();
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicator(index) => currentPageIndex.value = index;

  void nextPage() {
    if(currentPageIndex.value==2){
      Get.to(const LoginScreen());
    }else{
      int page =currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void dotNavigationClick(index) {
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }
}
