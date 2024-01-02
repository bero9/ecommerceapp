import 'package:ecommerceapp/utils/devices/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constans/colors.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Material(
        color: dark ? Colors.black : Colors.white,
        child: TabBar(
            tabs: tabs,
            isScrollable: true,
            indicatorColor: TColors.primary,
            unselectedLabelColor: Colors.grey[500],

            labelColor: THelperFunction.isDarkMode(context)
                ? Colors.white
                : TColors.primary));
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeigh());
}
