import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import '../../../../common/widgets/custom_shap/containers/seacrh_container.dart';

import '../../../../common/widgets/text/Section_Heading.dart';
import '../../../../utils/constans/sizes.dart';

import 'widget/home_app_bar.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPramaryHeaderContainar(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),

                  SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///SearchBar
                  TSearchContainer(
                    text: "Search in store",
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: TSize.spacing_between_sections,
                  ),

                  ///Categorties
                  Padding(
                    padding: const EdgeInsets.only(left: TSize.Defaultspacing),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TSeactionHeading(title: 'Popular Categories',showActionButtom: false,)],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

