import 'dart:core';
import 'dart:core';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

class THelperFunction {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'deepOrange') {
      return Colors.deepOrange;
    }
  }

  static void showSnackBar(String messege, BuildContext context) {
    ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(content: Text(messege)),
    );
  }

  static void showAlert(String title, String message, BuildContext context) {
    showDialog(
      context: context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  static void NavigateToScrean1(BuildContext context, Widget scren) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => scren));
  }
  static String truncateText(String text,int maxLenght){
    if(text.length<=maxLenght){
      return text;
    }else{
      return '${text.substring(0,maxLenght)}...';
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
  static Size screenSize(BuildContext context){
    return MediaQuery.of(context!).size;
  }
  static double ScreanHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }
  static double ScreanWidht() {
    return MediaQuery.of(Get.context!).size.width;
  }
  static String getformatDate(DateTime date, {String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }
  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }
  static List<Widget> wrapWidget(List<Widget> widgets,int rowSize){
    final wrappedList = <Widget>[];
    for(var i=0;i<widgets.length;i+=rowSize){
      final rowChildren = widgets.sublist(i,i+rowSize>widgets.length?widgets.length :i +   rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }

}
