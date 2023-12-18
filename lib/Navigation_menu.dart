import 'package:ecommerceapp/features/shop/screens/home/widget/StoreScrean.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/home.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/profileScrean.dart';
import 'package:ecommerceapp/features/shop/screens/home/widget/wishlist.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:ecommerceapp/widgets/store_page.dart';
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
/// AnimatedBottomNavigationBar
/// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:b_anking_clone_app/pages/Dashbord_page.dart';
// import 'package:b_anking_clone_app/theme/color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// class RootApp extends StatefulWidget {
//   const RootApp({super.key});
//
//   @override
//   State<RootApp> createState() => _RootAppState();
// }
//
// class _RootAppState extends State<RootApp> {
//   int pageIndex = 0;
// bool isActiveFloatingActionButton = false ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: getTabs(),
//       floatingActionButton: FloatingActionButton(
//
//         onPressed: () {
//           setState(() {
//             pageIndex = 4;
//             isActiveFloatingActionButton= true;
//           });
//         },
//         child: Icon(Icons.credit_score_sharp),
//         backgroundColor: isActiveFloatingActionButton ? Colors.blue : Colors.grey,
//         //params
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//        body: getBody()
//     );
//   }
//
//   Widget getTabs() {
//     List<IconData> Iconitems = [
//       Icons.grid_view_sharp,
//       Icons.comment,
//       Icons.notifications,
//       Icons.account_circle,
//     ];
//     return AnimatedBottomNavigationBar.builder(
//       itemCount: Iconitems.length,
//       height: 50,
//       tabBuilder: (int index, bool isActive) {
//         return Icon(
//           Iconitems[index],
//           size: 24,
//           color: isActive ? Colors.blue : Colors.black,
//         );
//       },
//
//       activeIndex: pageIndex,
//       gapLocation: GapLocation.center,
//       notchSmoothness: NotchSmoothness.verySmoothEdge,
//
//       leftCornerRadius: 32,
//       rightCornerRadius: 32,
//       onTap: (index) => setState(() {
//         isActiveFloatingActionButton= false;
//         pageIndex = index;
//       }),
//       //other params
//     );
//   }
//    Widget getBody(){
//     return IndexedStack(
//     index: pageIndex,
//       children:  [
//         DashbordPage(),
//         Center(
//           child: Text("Comment page",style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//
//         ),
//         Center(
//           child: Text("Notifacation page",style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//
//         ),
//         Center(
//           child: Text("Account page",style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//
//         ),
//         Center(
//           child: Text("Credit Card page",style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//
//         ),
//
//       ],
//     );
//    }
// }

