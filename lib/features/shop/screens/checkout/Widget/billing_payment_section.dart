import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSsection extends StatelessWidget {
  const TBillingPaymentSsection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        TSeactionHeading(
          title: 'Payment Method',
          buttomTitle: 'Change',
          onPressd: () {},
        ),
        const SizedBox(
          height: TSize.spaceBetweenItem,
        ),
        Row(
          children: [
            TrounddedContainer(
              width: 60,
              height: 35,
              background: dark ? TColors.light : Colors.white,
              padding: const EdgeInsets.all(TSize.sm),
              child: const Image(image: AssetImage(TImage.paybalCart),fit: BoxFit.contain,),

            ),
            const SizedBox(
              width: TSize.spaceBetweenItem/2,
            ),
            Text('paybal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
