
import 'package:flutter/material.dart';

import '../../../../utils/constans/colors.dart';
import '../../../../utils/constans/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shap/containers/rounded_container.dart';

class TCoponCode extends StatelessWidget {
  const TCoponCode({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TrounddedContainer(
      showBorder: true,
      background: dark ? TColors.dark : TColors.light,
      padding: const EdgeInsets.only(
          top: TSize.sm,
          bottom: TSize.sm,
          right: TSize.sm,
          left: TSize.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter Here',
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
            ),
          ),

          ///Button
          ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
              foregroundColor: dark?Colors.white.withOpacity(0.5):TColors.dark.withOpacity(0.5),
              backgroundColor: Colors.grey.withOpacity(0.2),
              side: BorderSide(color: Colors.grey.withOpacity(0.1))
          ), child: const Text('Apply'))
        ],
      ),
    );
  }
}
