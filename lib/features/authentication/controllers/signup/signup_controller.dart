import 'package:ecommerceapp/features/authentication/controllers/signup/network_manager.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/popups/full_screan_loader.dart';
import 'package:ecommerceapp/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variable

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();

  ///controller for email input
  final lastName = TextEditingController();

  ///controller for lastName input
  final userName = TextEditingController();

  ///controller for userName input
  final password = TextEditingController();

  ///controller for password input
  final firstName = TextEditingController();

  ///controller for firstName input
  final phoneNumber = TextEditingController();

  ///controller for phoneNumber input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///Form Key for fForm Validate

  /// --- Signup
  void signup() async {
    try {
      // //starting load
      TFullScreanLoader.openLoadingDialog(
          'We are processing your information', TImage.car4);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        return;
      }

      ///Form Validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      ///privacy  policy check
      if (!privacyPolicy.value) {
        TLoader.warningSnackBar(
            title: 'Accept Privacy Policy ',
            message:
                'In order to Create Account ,You must have to read and accept the privacy Policy & terms of Use');
        return;
      }

      ///register user in the firebase authentication  & save user data in the firebase
      ///  TODO: await AuthenticationRepositories.instance.registerWithEmailAndPassword(email.text.trim(),password.text.trim();
      ///save authentication user data in firebase   firestore

      ///show success message

      ///move to verify email screan
    } catch (e) {
      ///show some generic error to user
      TLoader.errorSnackBar(title: 'Oh Stop', message: e.toString());
    } finally {
      ///remove loader
      TFullScreanLoader.stopLoading();
    }
  }
}
