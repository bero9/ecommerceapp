import 'package:ecommerceapp/common/widgets/Product_cart/TProduct_Card/TProductCardVertical.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/Product_cart/Sortable/TsortAbleProduct.dart';

class TAllProduct extends StatelessWidget {
  const TAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Popular Product'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: TSortableProduct(),
        ),
      ),
    );
  }
}
