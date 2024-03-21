import 'package:ecommerceapp/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../../../controllers/signup/signup_controller.dart';
import '../verify_email.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last Name', value),
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
              controller: controller.userName,
              validator: (value) =>
                  TValidator.validateEmptyText('UserName', value),
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
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
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
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
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
            Obx(
              () => TextFormField(
                  controller: controller.password,
                  validator: (value) => TValidator.validatePassword(value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye)),
                  )),
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
                    child: Obx(() => Checkbox(
                        value: controller.privacyPolicy.value,
                        onChanged: (value) => controller.privacyPolicy.value =
                            !controller.privacyPolicy.value))),
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
                            decorationColor:
                                dark ? Colors.white : TColors.primary,
                          )),
                  TextSpan(
                      text: ' and',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: ' Term of use ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? Colors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? Colors.white : TColors.primary,
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
                onPressed: () => controller.signup(),
                child: const Text('Create Account'),
              ),
            )
          ],
        ));
  }
}
