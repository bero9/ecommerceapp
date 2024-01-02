import 'package:ecommerceapp/features/authentication/screens/login/widget/Login_Form.dart';
import 'package:ecommerceapp/features/authentication/screens/signup_widget/Wedgets/sign_form.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../utils/constans/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.Defaultspacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets Creat Your Account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 32,
              ),
              TSignUpForm(dark: dark),
              const SizedBox(
                height: TSize.spacing_between_sections,
              ),
              ///Divider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Divider(
                color: dark ? TColors.dark : Colors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,)),
              Text("Or Sign in with".capitalize!, style: Theme
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
          ),

              ///Social Bottom
             const TSocialBottom(),
            ],
          ),
        ),
      ),
    );
  }
}


