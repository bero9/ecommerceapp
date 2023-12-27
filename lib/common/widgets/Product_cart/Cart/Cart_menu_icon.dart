
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key, required this.OnPressed, required this.iconColor,
  });
  final VoidCallback OnPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: OnPressed,
            icon:  Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(right: 0,child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),

          ),
          child: Center(
            child: Text("5",style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white,fontSizeFactor:0.8),),
          ),
        ),)
      ],
    );
  }
}
