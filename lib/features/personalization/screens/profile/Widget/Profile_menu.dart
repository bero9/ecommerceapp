import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile_Menu extends StatelessWidget {
  const Profile_Menu({
    super.key,
     this.icon =Iconsax.arrow_right_34,
    this.onpressed,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback? onpressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBetweenItem/1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
