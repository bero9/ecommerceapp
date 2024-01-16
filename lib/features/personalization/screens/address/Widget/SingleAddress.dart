import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAdress extends StatelessWidget {
  const TSingleAdress({super.key, required this.selectAderess});

  final bool selectAderess;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TrounddedContainer(
      padding: const EdgeInsets.all(TSize.md),
      width: double.infinity,
      showBorder: true,
      background:
          selectAderess ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectAderess
          ? Colors.transparent
          : dark
              ? Colors.grey[800]!
              : Colors.grey,
      margin: const EdgeInsets.only(bottom: TSize.spaceBetweenItem),
      child: Stack(
        children: [
          Positioned(
           right: 5,
            top: 0,
            child: Icon(
              selectAderess ? Iconsax.tick_circle5 : null,
              color: selectAderess
                  ? dark
                      ? TColors.light
                      : TColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('Ebrahim Hamood'
                ,maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: TSize.sm/2,),
              const Text('+963982492725'
                ,maxLines: 1,
                overflow: TextOverflow.ellipsis,
                  ),
              const SizedBox(height: TSize.sm/2,),
              const Text('8235 Timmy Coves,south Liana,Main,87665,USA'
                ,softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
