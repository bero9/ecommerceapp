import 'package:ecommerceapp/common/widgets/app_Bar/appBar.dart';
import 'package:ecommerceapp/features/shop/screens/product_review/widget/Rating_Bar_Indicator.dart';
import 'package:ecommerceapp/features/shop/screens/product_review/widget/User_review_card.dart';
import 'package:ecommerceapp/features/shop/screens/product_review/widget/progres%20rating%20indicator.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScrean extends StatelessWidget {
  const ProductReviewScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar
      appBar: const TAppBar(
        title: Text('Review and Ratings'),
        showBackArrow: true,
      ),

      ///Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.Defaultspacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'The 7 Best Camera Brands - Winter 2024 Reviews Canon. Canon EOS R6 Mark II 5. SEE PRICE. Amazon.com. ...Sony. Sony α7 IV 6. SEE PRICE. ...Nikon. Nikon Z 6II 2. SEE PRICE '),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const OverRatingsindicator(),

            ///Rating
            const TRatingBarIndicator(rating: 3.5,),
            Text('16,Nov',style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(
              height: TSize.spaceBetweenItem,
            ),
            const UserReviewCard(),
            const UserReviewCard(),  const UserReviewCard(),  const UserReviewCard(),       const UserReviewCard(),  const UserReviewCard(),  const UserReviewCard(),    ],
        ),
      ),
    );
  }
}
