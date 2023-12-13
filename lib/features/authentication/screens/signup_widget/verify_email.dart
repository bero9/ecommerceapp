import 'package:ecommerceapp/common/widgets/login_signup/sucsses_screen/sucsses_screen.dart';
import 'package:ecommerceapp/features/authentication/screens/login/Login.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get_utils/get_utils.dart';

import '../../../../utils/constans/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSize.Defaultspacing),
                child: Column(
                  children: [
                    ///Image
                    Image(
                      image: AssetImage(
                          "assests/images/on_boarding_images/VeryfyEmail.jpg"),
                      width: THelperFunction.ScreanWidht() * 0.6,
                    ),
                    const SizedBox(
                      height: TSize.spacing_between_sections,
                    ),

                    /// Title & subTitle
                    Text(
                      'Verify your email address! ',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),
                    Text(
                      'Support@gmail.com! ',
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),
                    Text(
                      'Congratulation! your account awaits:verify your E-mail to start shopping  ',
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(
                      height: TSize.spacing_between_sections,
                    ),

                    /// Button
                    SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>SucssesScreen(
                      title:  'Your Account Successfully Created! ',
                    subTitle:  'Welcome to your unlimited shopping distination  '
                          'Your account is created unleash the joy of semless online shopping ',
                     image:   "assests/images/on_boarding_images/VeryfyEmail.jpg",
                      onPressed:()=> Get.to(()=>LoginScreen()),


                    )),child: const Text('Continue'),),),
                    const SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),
                    SizedBox(width:double.infinity,child: TextButton(onPressed:(){} ,child: const Text('Resend Email'),),),



                  ],
                ))));
  }
}
