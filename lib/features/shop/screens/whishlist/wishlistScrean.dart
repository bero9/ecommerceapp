import 'package:ecommerceapp/common/widgets/Product_cart/TProduct_Card/TProductCardVertical.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/icon/TCircularIcon.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/features/shop/screens/home/homeScrean.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/sizes.dart';

class WishlistScrean extends StatelessWidget {
  const WishlistScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          TCircularIcon(
            dark: THelperFunction.isDarkMode(context),
            icon: (Iconsax.add),
            onPressed: () => Get.to(() => (const HomeScrean())),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.Defaultspacing),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
