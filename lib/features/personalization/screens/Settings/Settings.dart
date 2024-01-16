import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/custom_shap/containers/TPrimaryHeaderContainer.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/ListTile/Settings_menu_tile.dart';
import '../../../../common/widgets/ListTile/User_tile_profile.dart';
import '../../../shop/screens/Cart/cart.dart';
import '../../../shop/screens/Order/Order.dart';
import '../address/adress.dart';
import '../profile/ProfileScrean.dart';

class SettingsScrean extends StatelessWidget {
  const SettingsScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPramaryHeaderContainar(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: Colors.white),
                  ),
                ),

                ///User profile Card
                 TUserProfileTitle(onpressed: () => Get.to(()=> const ProfileScrean()),),
                const SizedBox(
                  height: TSize.spacing_between_sections,
                ),
              ],
            )),

            ///Body

            Padding(
              padding: const EdgeInsets.all(TSize.Defaultspacing),
              child: Column(
                children: [
                  ///Account setting
                  const TSeactionHeading(
                    title: 'Account Setting',
                    showActionButtom: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBetweenItem,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set Shopping delivery address',
                    ontap: ()=> Get.to(()=>const adreesScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add,remove product and move to checkout',
                    ontap: () =>Get.to(const CartScrean()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-Progress and Completed Orders',
                    ontap: () =>Get.to(const TOrderScrean()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'With draw balance to registered bank account',
                    ontap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discount coupons',
                    ontap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'notification',
                    subtitle: 'Set any Kind of notification Settings',
                    ontap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account privacy',
                    subtitle: 'Manage data usage and connected account ',
                    ontap: () {},
                  ),

                  const SizedBox(
                    height: TSize.spacing_between_sections,
                  ),
                  const TSeactionHeading(
                    title: 'App Settings',
                    showActionButtom: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBetweenItem,
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'load datd',
                      subtitle: 'Upload data to your Cloud firebase'),
                  TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      trailing: Switch(value: true,onChanged: (value){},),
                      subtitle: 'set recommendation based on location'),
                  TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      trailing: Switch(value: false,onChanged: (value){},),
                      subtitle: 'search result is safe for all ages'),
                  TSettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD image quality',
                      trailing: Switch(value: false,onChanged: (value){},),
                      subtitle: 'set image quality to be seen'),
                  const SizedBox(
                    height: TSize.spacing_between_sections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){},child: const Text('Log Out'),)),
                  const SizedBox(
                    height: TSize.spacing_between_sections*2.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
