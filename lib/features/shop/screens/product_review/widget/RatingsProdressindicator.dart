
import 'package:flutter/material.dart';

import '../../../../../utils/constans/colors.dart';
import '../../../../../utils/devices/device_utility.dart';

class TRatingsProdressindicator extends StatelessWidget {
  const TRatingsProdressindicator({
    super.key, required this.text, required this.value,
  });
final String text;
final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreanWidht(context)*0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: Colors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(TColors.primary),

            ),
          ),
        )

      ],
    );
  }
}
