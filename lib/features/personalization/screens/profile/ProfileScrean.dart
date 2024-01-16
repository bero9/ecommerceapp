import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/common/widgets/images/TCircularImage.dart';
import 'package:ecommerceapp/common/widgets/text/Section_Heading.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Widget/Profile_menu.dart';

class ProfileScrean extends StatelessWidget {
  const ProfileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.Defaultspacing),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                    imageUrl: TImage.user,
                    width: 125,
                    height: 125,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change your Profile Picture',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: Colors.grey),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const TSeactionHeading(
              title: 'Profile Seaction :',
              showActionButtom: false,
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            Profile_Menu(
              title: 'Name',
              value: 'Ebrahim Hamood',
              onpressed: () {},
            ),
            Profile_Menu(
              title: 'UserName',
              value: 'Ber9',
              onpressed: () {},
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const TSeactionHeading(
              title: 'Personal Information :',
              showActionButtom: false,
            ),
            Profile_Menu(
              title: 'User ID',
              value: '513165',
              onpressed: () {},
              icon: Iconsax.copy,
            ),
            Profile_Menu(
              title: 'E-male',
              value: 'bero@gmail.com',
              onpressed: () {},
            ),
            Profile_Menu(
              title: 'Phone Number',
              value: '0982492725',
              onpressed: () {},
            ),
            Profile_Menu(
              title: 'Gender',
              value: 'male',
              onpressed: () {},
            ),
            Profile_Menu(
              title: 'Date of birth',
              value: '18/7/2002',
              onpressed: () {},
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem / 2,
            ),
            const Divider(),
            Center(
                child: TextButton(
                    onPressed: () {}, child: const Text('Close your Account',style: TextStyle(color: Colors.red),)))
          ],
        ),

        /// Details
      ),
    );
  }
}
