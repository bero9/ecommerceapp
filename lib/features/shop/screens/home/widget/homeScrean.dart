import 'package:ecommerceapp/common/widgets/custom_shap/curved_edges/curved_edges.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import '../../../../../common/widgets/custom_shap/containers/circular_container.dart';
import '../../../../../common/widgets/custom_shap/curved_edges/curved_edger_widget.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        TPramaryHeaderContainar(child: Column(
          children: [

          ],
        ),),
      ],
    ),)
    ,
    );
  }
}
