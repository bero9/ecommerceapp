import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constans/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: ()=>Get.back, icon: Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child:  Padding(
          padding: EdgeInsets.all(TSize.Defaultspacing),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assests/images/on_boarding_images/VeryfyEmail.jpg"),
                  width: THelperFunction.ScreanWidht() * 0.6,
                ),
                const SizedBox(
                  height: TSize.spacing_between_sections,
                ),

                /// Title & subTitle
                Text(
                  "Password Reset Email Sent",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: TSize.spaceBetweenItem,
                ),
                Text(
                  'yor account securty in our privcly we sent to you a secure link to safely change your password and keep your account protect ',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: TSize.spacing_between_sections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Done'),
                  ),
                ),

                const SizedBox(
                  height: TSize.spaceBetweenItem,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){},
                    child:  Text('Reset E-mail',style: TextStyle(color: TColors.primary),),
                  ),
                ),

              ])),
        )
    );
  }
}
