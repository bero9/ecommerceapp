
import 'package:flutter/material.dart';

import '../../../../utils/constans/colors.dart';
import '../curved_edges/curved_edger_widget.dart';
import 'circular_container.dart';

class TPramaryHeaderContainar extends StatelessWidget {
  const TPramaryHeaderContainar({
    super.key,required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(child: Container(
      color: TColors.primary,
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(
              top: -150,
              right: -200,
              child: TCircularContainar(
                background: TColors.textwhite.withOpacity(0.2),
              )),
          Positioned(
            top: 100,
            right: -250,
            child: TCircularContainar(
              background: TColors.textwhite.withOpacity(0.2),
            ),
          ),
          child,

        ],
      ),
    ),);
  }
}

