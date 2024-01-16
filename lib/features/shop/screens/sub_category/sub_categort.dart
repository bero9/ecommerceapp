import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/images/T_rounded_Image.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/Product_cart/TProduct_Card/TProduct_Card_horezontal.dart';

class TSubCategory extends StatelessWidget {
  const TSubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.Defaultspacing),
          child: Column(
            children: [
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImage.productcamera,
                applyImageRaduis: true,
              ),
              const SizedBox(
                height: TSize.spacing_between_sections,
              ),
              Column(
                children: [
                  TSeactionHeading(
                    title: 'Sportshirts',
                    onPressd: () {},
                  ),
                  const SizedBox(
                    height: TSize.spacing_between_sections / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index)=>const SizedBox(width: TSize.spaceBetweenItem,),
                        itemBuilder: (context, index) => const TProductCardhorezontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
