
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constans/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../TProduct_Card/TProductCardVertical.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) => DropdownMenuItem(
              value: option,
              child: Text(option),
            ))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(
          height: TSize.spacing_between_sections,
        ),
        TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const TProductCardVertical())

        ///Product
      ],
    );
  }
}
