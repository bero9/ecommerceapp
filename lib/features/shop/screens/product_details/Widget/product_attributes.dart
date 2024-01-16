import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/text/Tproduct_Price_Text.dart';
import 'package:ecommerceapp/common/widgets/text/product_title_text.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/text/Section_Heading.dart';
import '../../../../../utils/helpers/helper_function.dart';
import 'TCoiceChip.dart';

class TproductAttribute extends StatelessWidget {
  const TproductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TrounddedContainer(
          padding: const EdgeInsets.all(16),
          background: dark ? Colors.grey[800]! : Colors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const Row(
                    children: [
                      TSeactionHeading(
                        title: 'variation',
                        showActionButtom: false,
                      ),
                      SizedBox(
                        width: TSize.spaceBetweenItem,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price : ',
                            smalsize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSize.spaceBetweenItem,
                          ),
                          const TProductPriceText(Price: '25')
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock : ',
                            smalsize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              ///Variation Description
              const TProductTitleText(
                title: 'THIS camera is black and fron canon market',
                smalsize: true,
                maxline: 4,
              )
            ],

          ),
        ),
        ///Atributes
        Column(

            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSeactionHeading(title: 'Color',showActionButtom: false),
            const SizedBox( height:TSize.spaceBetweenItem/2),
            Wrap(
              spacing: 8,
              children: [ TCoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TCoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
                TCoiceChip(text: 'Red', selected: false,onSelected: (value){})],
            )

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSeactionHeading(title: 'Size',showActionButtom: false,),
            const SizedBox( height:TSize.spaceBetweenItem/2),
            Wrap(
              spacing: 8,
              children: [
                TCoiceChip(text: 'EU-34', selected: true,onSelected: (value){},),
                TCoiceChip(text: 'EU-39', selected: false,onSelected: (value){}),
                TCoiceChip(text: 'EU-36', selected: false,onSelected: (value){})
              ],
            )

          ],
        )
      ],
    );
  }
}
