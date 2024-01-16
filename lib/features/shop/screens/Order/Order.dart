import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import 'Widget/OrdersList.dart';

class TOrderScrean extends StatelessWidget {
  const TOrderScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body:
      const Padding(
        padding: EdgeInsets.all(TSize.Defaultspacing),
        child: TOrderList(),
      ),
    );
  }
}
