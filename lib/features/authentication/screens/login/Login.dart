
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_Styles.dart';

import 'widget/Login_Form.dart';
import 'widget/Login_Header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
            //Logo Title & subTitle
              ToLoginHeader(dark: dark),
          //Form
           const TLoginForm(),
          //Divider
          TFormDivider(dark: dark),

          ///Footer
           const TSocialBottom(),
              ],
              ),
        )
          ,
          )
    ,
    );
  }
}




