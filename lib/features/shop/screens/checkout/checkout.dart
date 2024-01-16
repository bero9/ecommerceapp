import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/login_signup/sucsses_screen/sucsses_screen.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/Widget/billing_addres_section.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/Widget/billing_amount_section.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/Widget/billing_payment_section.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Navigation_menu.dart';
import '../../../../common/widgets/Product_cart/Cart/copon_widget.dart';
import '../Cart/Widget/Cart_item_deatels.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.Defaultspacing),
          child: Column(
            children: [
              const TCartItemDetails(
                showAddRemoveBottom: false,
              ),
              const SizedBox(
                height: TSize.spacing_between_sections,
              ),

              ///Copon TextFaild

              const TCoponCode(),
              const SizedBox(
                height: TSize.spacing_between_sections,
              ),

              ///Billing Seztion

              TrounddedContainer(
                showBorder: true,
                background: dark ? Colors.black : Colors.white,
                padding: const EdgeInsets.all(TSize.md),
                child: const Column(
                  children: [
                    ///pricing
                    TBillingAmountSsection(),
                    SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),

                    ///Divider
                    Divider(),
                    SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),

                    /// pyment Method
                    TBillingPaymentSsection(),
                    SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),

                    /// Address
                    TBillingAdressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.Defaultspacing),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SucssesScreen(
              title: 'Payment Successes',
              subTitle: 'Your item will be shipped soon',
              onPressed:()=> Get.offAll(() => const NavigationMenu()),
              image: TImage.paybalCart)),
          child: const Text('CheckOut 500 \$'),
        ),
      ),
    );
  }
}
