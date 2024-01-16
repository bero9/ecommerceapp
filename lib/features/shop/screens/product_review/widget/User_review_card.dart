import 'package:ecommerceapp/common/widgets/custom_shap/containers/rounded_container.dart';
import 'package:ecommerceapp/features/shop/screens/product_review/widget/Rating_Bar_Indicator.dart';
import 'package:ecommerceapp/utils/constans/Image_Strings.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImage.user),
                ),
                const SizedBox(
                  width: TSize.spaceBetweenItem,
                ),
                Text(
                  'Natali',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
  ]),
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(
                  width: TSize.spaceBetweenItem,
                ),
                Text('01 Nov,2023',
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const ReadMoreText(
              'The Canon EOS R6 Mark II is the best Canon camera weve tested. The Mark II takes everything that makes the original Canon EOS R6 great and adds a higher-resolution sensor, faster e-shutter burst shooting, uncropped 4k video, and no recording time limit.',
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'show more',
              trimExpandedText: 'less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            TrounddedContainer(
              background: dark ? Colors.grey[800]! : Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(TSize.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('D-Family :',
                            style: Theme.of(context).textTheme.titleMedium),
                        Text('2,oct,2023 :',
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                    const SizedBox(
                      height: TSize.spaceBetweenItem,
                    ),
                    const ReadMoreText(
                      'The Canon EOS R6 Mark II is the best Canon camera weve tested. The Mark II takes everything that makes the original Canon EOS R6 great and adds a higher-resolution sensor, faster e-shutter burst shooting, uncropped 4k video, and no recording time limit.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'show more',
                      trimExpandedText: 'less',
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            )

      ],
    );
  }
}
