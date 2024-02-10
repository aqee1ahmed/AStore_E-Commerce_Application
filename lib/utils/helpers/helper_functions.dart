import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AStoreAppHelperFunctions {
  AStoreAppHelperFunctions._();

  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Cyan') {
      return Colors.cyan;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Blue Grey') {
      return Colors.blueGrey;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else {
      return null;
    }
  }

  static showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateString(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    } else {
      return text;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Size screenSizes() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'yyyy-MM-dd'}) {
    return DateFormat(format).format(date);
  }

  static List<A> removeDuplicates<A>(List<A> list) {
    return list.toSet().toList();
  }

  static List<Widget> warpWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
