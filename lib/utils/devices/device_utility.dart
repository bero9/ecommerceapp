

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscopeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreanHeight(BuildContext context) {
    return MediaQuery.of(context!).size.height;
  }

  static double getScreanWidht(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context!).devicePixelRatio;
  }

  static double getStetusBarHeigh(BuildContext context) {
    return MediaQuery.of(context!).padding.top;
  }
  static double getBottomNavigationBarHeigh() {
    return kBottomNavigationBarHeight;
  }
  static double getAppBarHeigh() {
    return kToolbarHeight;
  }
  static double getKeyBoardHeigh(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom;
  }
  static Future<bool> isKeyBoardVisible(BuildContext context) async {
    final viewInsets = View.of(context!).viewInsets;
    return viewInsets.bottom>0;
  }
  static Future<bool> isPhisicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android||defaultTargetPlatform == TargetPlatform.iOS;
  }
  static void vibrate(Duration duration) {
   HapticFeedback.vibrate();
   Future.delayed(duration,()=>HapticFeedback.vibrate());
  }
  static Future<void> setPreferredOrientations(List<DeviceOrientation>orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  }
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  static Future<bool> hasInternetConection() async {
  try{
    final result = await InternetAddress.lookup('example.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  }on SocketException catch(_) {return false;}
  }
  static bool isIos (){
    return Platform.isIOS;
  }
  static bool android (){
    return Platform.isAndroid;
  }
  static void launchUrl(String url)async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  }

