import 'package:flutter/material.dart';

import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.fill,
    required this.imageUrl,
    this.width = 56,
    this.height = 56,
    this.padding = TSize.sm,
    this.isNetworkImage = false,
    this.background,
    this.overlayColor,
  });

  final BoxFit? fit;
  final String imageUrl;
  final double width, height, padding;
  final bool isNetworkImage;
  final Color? background;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: background ??
            (THelperFunction.isDarkMode(context) ? Colors.black : Colors.white),
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
         child:Container(decoration:BoxDecoration(
             color: background??(THelperFunction.isDarkMode(context)?Colors.black:Colors.white),
             borderRadius: BorderRadius.circular(100),
             image: DecorationImage(
               image: AssetImage(imageUrl),
               fit: BoxFit.fill,
             )),)
      ),
    );
  }
}
