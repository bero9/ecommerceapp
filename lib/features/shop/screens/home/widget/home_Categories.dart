
import 'package:ecommerceapp/features/shop/screens/sub_category/sub_categort.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/common_widget_image_text/virtecal_image_text.dart';
import '../../../../../utils/constans/Image_Strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVirtecalImageText(image: TImage.car,title: 'car',onTap:()=> Get.to(()=>const TSubCategory()),);
          }),
    );
  }
}

