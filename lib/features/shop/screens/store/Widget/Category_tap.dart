import 'package:ecommerceapp/common/widgets/Product_cart/TProduct_Card/TProductCardVertical.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/features/shop/screens/all_product/all_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../common/widgets/brands/BrandShowCase.dart';
import '../../../../../utils/constans/Image_Strings.dart';
import '../../../../../utils/constans/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return               ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: const EdgeInsets.all(TSize.Defaultspacing),
        child: Column(
          children: [
            const TBrandShadowCase(images: [TImage.productcamera,TImage.productleps,TImage.productshoes],),
            const SizedBox(height: TSize.spaceBetweenItem,),
            const TBrandShadowCase(images: [TImage.productcamera,TImage.productleps,TImage.productshoes],),
            const SizedBox(height: TSize.spaceBetweenItem,),
            TSeactionHeading(title: 'You might Like',showActionButtom: true,onPressd: ()=>Get.to(const TAllProduct()),),
            const SizedBox(height: TSize.spaceBetweenItem,),
            TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical()),
            const SizedBox(height: TSize.spacing_between_sections,),
          ],
        ),
      ),]
    );
  }
}
