import 'package:flutter/material.dart';

import '../../../utils/constans/sizes.dart';
import '../../../utils/helpers/helper_function.dart';


class TVirtecalImageText extends StatelessWidget {
  const TVirtecalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor=Colors.white,
    this.backgroundColor=Colors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBetweenItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                  color: backgroundColor??(THelperFunction.isDarkMode(context)?Colors.black:Colors.white),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  )),
              // child: Image(
              //   image: AssetImage(TImage.car1),
              //   fit: BoxFit.cover,
              // ),
            ),

            ///Text
            const SizedBox(
              height: TSize.spaceBetweenItem / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}