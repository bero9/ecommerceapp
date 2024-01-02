import 'package:flutter/material.dart';

class TSeactionHeading extends StatelessWidget {
  const TSeactionHeading({
    super.key,
    this.textColor,
    this.showActionButtom = true,
    required this.title,
    this.buttomTitle = 'view all',
    this.onPressd,
  });

  final Color? textColor;
  final bool showActionButtom;
  final String title, buttomTitle;
  final void Function()? onPressd;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween

        ,children: [
      Text(
        title,
        style:
            Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      if (showActionButtom)
        TextButton(
          onPressed: onPressd,
          child: Text(buttomTitle),
        ),
    ]);
  }
}
