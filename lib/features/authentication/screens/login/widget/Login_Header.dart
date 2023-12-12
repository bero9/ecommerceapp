import 'package:flutter/material.dart';

import '../../../../../utils/constans/Image_Strings.dart';
import '../../../../../utils/constans/Text.dart';
import '../../../../../utils/constans/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';


class ToLoginHeader extends StatelessWidget {
  const ToLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? TImage.LightAppLogo : TImage.darkAppLogo)),
        Text(
          TText.LoginTitle,
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        const SizedBox(
          height: TSize.sm,
        ),
        Text(
          TText.LoginSubTitle,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium,
        ),
      ],
    );
  }
}