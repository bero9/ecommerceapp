import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/Product_cart/Cart/Add&RemoveBottom.dart';
import '../../../../../common/widgets/text/Tproduct_Price_Text.dart';
import '../../../../../utils/constans/sizes.dart';
import 'Cart_Item.dart';

class TCartItemDetails extends StatelessWidget {
  const TCartItemDetails({super.key,  this.showAddRemoveBottom=true});

  final bool showAddRemoveBottom;
  @override
  Widget build(BuildContext context) {
    final dark =THelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSize.spacing_between_sections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
        if(showAddRemoveBottom)  const SizedBox(
            height: TSize.spaceBetweenItem,
          ),
          if(showAddRemoveBottom)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 70,),
                  TProductQuantityAdder(dark: dark),
                ],
              ),
              const TProductPriceText(Price: '256')
            ],
          )
        ],
      ),
    );
  }
}
