
import 'package:flutter/material.dart';

import 'RatingsProdressindicator.dart';

class OverRatingsindicator extends StatelessWidget {
  const OverRatingsindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(flex: 7,
          child: Column(
            children: [
              TRatingsProdressindicator(text: '5', value: 1.0,),
              TRatingsProdressindicator(text: '4', value: 0.8,),
              TRatingsProdressindicator(text: '3', value: 0.5,),
              TRatingsProdressindicator(text: '2', value: 0.3,),
              TRatingsProdressindicator(text: '1', value: 0.1,)

            ],
          ),
        )
      ],
    );
  }
}
