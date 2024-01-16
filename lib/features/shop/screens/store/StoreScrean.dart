import 'package:ecommerceapp/common/widgets/Product_cart/Cart/Cart_menu_icon.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/app_Bar/tab_bar.dart';
import 'package:ecommerceapp/common/widgets/custom_shap/containers/seacrh_container.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/features/shop/screens/brand/all_brands.dart';
import 'package:ecommerceapp/features/shop/screens/store/Widget/Category_tap.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../common/widgets/brands/TBrand_Card.dart';
import '../../../../utils/helpers/helper_function.dart';

class StoreScrean extends StatelessWidget {
  const StoreScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
          action: [
            TCartCounterIcon(
                OnPressed: () {},
                iconColor: THelperFunction.isDarkMode(context)
                    ? Colors.white
                    : Colors.black)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunction.isDarkMode(context)
                      ? Colors.black
                      : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSize.Defaultspacing),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSize.spaceBetweenItem,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSize.spacing_between_sections,
                        ),

                        ///Featured Brands
                        TSeactionHeading(
                          title: 'Featured Brands',
                          onPressd: ()=>Get.to(AllBrandScrean()),
                        ),
                        const SizedBox(
                          height: TSize.spaceBetweenItem / 1.5,
                        ),
                        TGridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),

                  /// Tap --
                  bottom: const TTabBar(
                    tabs: [
                      Tab(
                        child: Text('Car'),
                      ),
                      Tab(
                        child: Text('Clothess'),
                      ),
                      Tab(
                        child: Text('Sport'),
                      ),
                      Tab(
                        child: Text('shoes'),
                      ),
                      Tab(
                        child: Text('Costemtics'),
                      ),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
             TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
