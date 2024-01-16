import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../checkout/checkout.dart';
import 'Widget/Cart_item_deatels.dart';

class CartScrean extends StatelessWidget {
  const CartScrean({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:const TCartItemDetails(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.Defaultspacing),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>const CheckOut()),child: const Text('CheckOut 500 \$'),),
      ),
    );
  }
}
