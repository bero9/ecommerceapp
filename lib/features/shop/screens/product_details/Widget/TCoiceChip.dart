import 'package:ecommerceapp/common/widgets/custom_shap/containers/circular_container.dart';
import 'package:ecommerceapp/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TCoiceChip extends StatelessWidget {
  const TCoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=THelperFunction.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),child: ChoiceChip(
        label: isColor? const SizedBox():Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected?Colors.white:null),
        avatar:isColor? TCircularContainar(width: 50,height: 50,background: THelperFunction.getColor(text)!) :null,
        labelPadding: isColor ?const EdgeInsets.all(0):null,
        padding: isColor? const EdgeInsets.all(0):null,
        backgroundColor: isColor?THelperFunction.getColor(text)!:null,
        shape:isColor? const CircleBorder():null,
      ),
    );
  }
}
