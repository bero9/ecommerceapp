import 'package:ecommerceapp/common/widgets/Product_cart/Sortable/TsortAbleProduct.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/brands/TBrand_Card.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/features/shop/screens/brand/brand_product.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllBrandScrean extends StatelessWidget {
  const AllBrandScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const TSeactionHeading(title: 'Brands'),
              const SizedBox(
                height: TSize.spaceBetweenItem,
              ),
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>
                       TBrandCard(showBorder: true,onTap: ()=>Get.to(BrandProduct()),))
            ],
          ),
        ),
      ),
    );
  }
}
