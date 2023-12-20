import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/Product_cart/Cart_menu_icon.dart';
import '../../../../common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import '../../../../utils/constans/Text.dart';
import 'widget/home_app_bar.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPramaryHeaderContainar(
              child: Column(
                children: [
                  THomeAppBar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
