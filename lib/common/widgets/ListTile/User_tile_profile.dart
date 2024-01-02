import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constans/Image_Strings.dart';
import '../images/TCircularImage.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        imageUrl: TImage.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coding With Bero',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Colors.white),
      ),
      subtitle: Text(
        'berohamood@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
