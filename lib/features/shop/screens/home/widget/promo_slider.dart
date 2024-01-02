
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/features/shop/controllers/home_controller.dart';
import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shap/containers/circular_container.dart';
import '../../../../../common/widgets/images/T_rounded_Image.dart';
import '../../../../../utils/constans/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
final List<String>banners;
  @override
  Widget build(BuildContext context) {
    final conttroller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_)=>conttroller.updatePageInicator(index),

          ),
          items:
           banners.map((url) =>  TRoundedImage(imageUrl: url)).toList()
          ,
        ),
        const SizedBox(height: TSize.spaceBetweenItem,),
        Center(
          child: Obx(
              ()=>Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i=0;i<banners.length;i++)
                   TCircularContainar(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    background: conttroller.carousALcurentIndex.value ==i?TColors.primary:Colors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
