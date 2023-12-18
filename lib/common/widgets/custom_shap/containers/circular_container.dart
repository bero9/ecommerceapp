
import 'package:flutter/material.dart';

class TCircularContainar extends StatelessWidget {
  const TCircularContainar({
    super.key, this.width=400, this.height=400, this.radios=400, this.padding=0, this.child,required  this.background,
  });
  final double? width;
  final double? height;
  final double radios;
  final double padding;
  final Widget? child;
  final Color background;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radios),
        color: background,
      ),
      child: child,
    );
  }
}
