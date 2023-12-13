import 'package:ecommerceapp/features/authentication/screens/Password_Configration/forget_password.dart';
import 'package:ecommerceapp/features/authentication/screens/Password_Configration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';


import '../../../../../utils/constans/Image_Strings.dart';
import '../../../../../utils/constans/Text.dart';
import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../signup_widget/sigup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSize.spacing_between_sections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: "E-Mail",
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: "Password",
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(
                height: 16.0 / 2,
              ),
              ///Remember me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text("Rememer Me"),
                    ],
                  ),
                  ///Forget Password
                  TextButton(
                      onPressed: () =>Get.to(()=>const ForgetPassword()),
                      child: const Text("Forget Password")),
                ],
              ),

              //Sign Bottom
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Sign In"))),
              const SizedBox(height: TSize.spaceBetweenItem),

              ///created acount Bottom
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () =>Get.to(()=>SignupScreen()),
                      child: const Text("Create Account"))),

            ],
          ),
        ));
  }
}

class TSocialBottom extends StatelessWidget {
  const TSocialBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100),),
                    child: IconButton(onPressed: () {},
          icon: const Image(
            width: TSize.iconMd,
            height: TSize.iconMd,
            image: AssetImage(TImage.googleLogo),

          ),
                    ), ),
          const SizedBox(width: TSize.spaceBetweenItem),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100),),
            child: IconButton(onPressed: () {},
              icon: const Image(
                width: TSize.iconMd,
                height: TSize.iconMd,
                image: AssetImage(TImage.facebookLogo),

              ),
            ), )
        ],
      ),
    );
  }
}

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(
          color: dark ? TColors.dark : Colors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,)),
        Text("Or Sign in with", style: Theme
            .of(context)
            .textTheme
            .labelMedium,),
        Flexible(child: Divider(
          color: dark ? TColors.dark : Colors.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,))
        ,
      ],
    );
  }
}
