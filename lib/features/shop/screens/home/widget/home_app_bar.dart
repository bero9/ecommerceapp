
import 'package:flutter/material.dart';

import '../../../../../common/widgets/Product_cart/Cart/Cart_menu_icon.dart';
import '../../../../../common/widgets/app_Bar/appBar.dart';
import '../../../../../utils/constans/Text.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TText.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey),
          ),
          Text(
            TText.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          )
        ],
      ),
      action: [
        TCartCounterIcon(OnPressed: () {  }, iconColor: Colors.white,)
      ],
    );
  }
}
