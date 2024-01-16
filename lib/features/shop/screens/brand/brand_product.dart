import 'package:ecommerceapp/common/widgets/Product_cart/Sortable/TsortAbleProduct.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/brands/TBrand_Card.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: TAppBar(title: Text('Nike'),),body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(24),
      child: Column(
        children: [
          TBrandCard(showBorder: true),
          SizedBox(height: TSize.spacing_between_sections,),
          TSortableProduct()
        ],
      ),),
    ),
    );
  }
}
