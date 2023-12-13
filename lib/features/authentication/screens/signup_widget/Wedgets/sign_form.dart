import 'package:ecommerceapp/features/authentication/screens/signup_widget/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(children: [
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: "First Name",
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
          const SizedBox(
            width: TSize.spaceBetweenItem,
          ),
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: "Last Name",
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),

        ///UserName
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: "User Name",
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),

        ///Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: "E-Mail",
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),

        ///PhoneNumber
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: "PhoneNumber",
            prefixIcon: Icon(Iconsax.call),
          ),
        ),

        ///Password
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),
        TextFormField(
          obscureText: true,
          expands: false,
          decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: 14,
        ),

        ///Term&Condition
        Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'I agreeTo',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: ' Privacy policy',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? Colors.white : TColors.primary,
                      )),
              TextSpan(
                  text: ' and', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: ' Term of use ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? Colors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? Colors.white : TColors.primary,
                      )),
            ]))
          ],
        ),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),

        ///Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () =>Get.to(()=> const VerifyEmailScreen()),
            child: const Text('Create Account'),
          ),
        )
      ],
    ));
  }
}
