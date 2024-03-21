import 'package:ecommerceapp/features/authentication/screens/login/Login.dart';
import 'package:ecommerceapp/features/authentication/screens/on_boarding/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepositories extends GetxController {
  static AuthenticationRepositories get instance => Get.find();

  ///Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  ///Called from main.dart on app launch
  @override
  void onReady() {
    ///remove the native splash screan
    FlutterNativeSplash.remove();

    ///redirect to the appropriate screan
    screenRedirect();
  }

  ///Function to show Relevant Screan
  screenRedirect() async {
    //Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    //check if it is the first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }
/*-------------------------------------Email & Password Sign in ---------------------------------*/

//[EmailAuthentication] - SigIn

//[EmailAuthentication] - SigIn
// Future<UserCredential> registerWithEmailAndPassword(String email,String password)async{
//  try {
//       return await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     }on FirebaseAuthException catch(e){
//    throw TFirebaseAuthException(e.code).message;
//  }on FirebaseException catch(e){
//    throw TFirebaseException(e.code).message;
//  }on FormatException catch(_){
//    throw FormatException();
//  }on PlatformException catch(e){
//    throw PlatformException(e.code).message;
//  }catch(e){
//    throw 'Something went wrong. Please try again ';
//  }
  }
//}
