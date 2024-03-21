import 'package:ecommerceapp/utils/constans/colors.dart';
import 'package:ecommerceapp/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TAnimationLoaderWidget extends StatelessWidget {
  const TAnimationLoaderWidget(
      {super.key,
      required this.animation,
      required this.text,
      this.showAction = false,
      this.actionText,
      this.onActionBottom});

  final String animation;
  final String text;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionBottom;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              animation,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(
              height: TSize.Defaultspacing,
            ),
            // showAction ? SizedBox(width: 250, child: OutlinedButton(
            //   onPressed: onActionBottom,
            //   style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSize.Defaultspacing,
            ),
            showAction
                ? SizedBox(
                    width: 250,
                    child: OutlinedButton(
                      onPressed: onActionBottom,
                      style:
                          OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: TColors.light),
                      ),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
