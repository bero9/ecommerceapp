import 'package:ecommerceapp/features/authentication/screens/Password_Configration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSize.Defaultspacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(
              'Forget Password ',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            Text(
              'Do not worry sometimes people can foret too , enter your E-mail and we will send a password reset link  ',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSize.spacing_between_sections * 2,
            ),

            ///TextFaild
TextFormField(
  decoration: const InputDecoration(labelText: "E-mail",prefixIcon: Icon(Iconsax.direct_right)),
),
            const SizedBox(
              height: TSize.spacing_between_sections,
            ),
            ///Submit Button
         SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Get.off(()=>ResetPassword()), child: Text("Submit"))),

          ],
        ),
      ),
    );
  }
}
