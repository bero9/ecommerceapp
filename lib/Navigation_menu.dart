import 'package:ecommerceapp/features/shop/screens/home/StoreScrean.dart';
import 'package:ecommerceapp/features/shop/screens/home/homeScrean.dart';
import 'package:ecommerceapp/features/shop/screens/home/profileScrean.dart';
import 'package:ecommerceapp/features/shop/screens/home/wishlistScrean.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: Obx(

        ()=> NavigationBar(
        
          height: 80,
            selectedIndex: controller.selectedIndex.value,
          elevation: 0,
          onDestinationSelected: (index)=>controller.selectedIndex.value=index,
          backgroundColor: darkMode? Colors.black:Colors.white,
          destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screen[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screen =[const HomeScrean(),const StoreScrean(),const wishlistScrean(),const ProfileScrean(),];
}

