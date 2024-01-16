import 'package:flutter/material.dart';

import '../../../../../common/widgets/text/Section_Heading.dart';
import '../../../../../utils/constans/sizes.dart';

class TBillingAdressSection extends StatelessWidget {
  const TBillingAdressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSeactionHeading(
          title: 'Shipping Address',
          buttomTitle: 'Change',
          onPressd: () {},
        ),
        Text('Ebrahim Hamood' ,style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(
          height: TSize.spaceBetweenItem/2,
        ),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(
              width: TSize.spaceBetweenItem,
            ),
            Text('+96382492725' ,style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(
              width: TSize.spaceBetweenItem,
            ),
            Expanded(child: Text('south Latakia,street in jableh' ,style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),
      ],
    );
  }
}
