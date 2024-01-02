import 'package:flutter/material.dart';

import '../../../../utils/constans/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../../styles/spacing_Styles.dart';

class SucssesScreen extends StatelessWidget {
  const SucssesScreen(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onPressed,
      required this.image});

  final String title, subTitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: THelperFunction.ScreanWidht() * 0.6,
              ),
              const SizedBox(
                height: TSize.spacing_between_sections,
              ),

              /// Title & subTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBetweenItem,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSize.spacing_between_sections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
