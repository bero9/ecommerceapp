import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/Text.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../common/styles/spacing_Styles.dart';
import '../../../utils/constans/sizes.dart';
import 'login/widget/Login_Form.dart';
import 'login/widget/Login_Header.dart';

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
          TLoginForm(),
          //Divider
          TFormDivider(dark: dark),

          ///Footer
          TSocialBottom(),
              ],
              ),
        )
          ,
          )
    ,
    );
  }
}




