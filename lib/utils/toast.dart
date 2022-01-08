import 'package:collectivity_demo/utils/constantes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static void showMessage(String message, BuildContext ctx,
      {int duration = 2,
      Color backgroundColor = AppColors.green,
      Color textColor = Colors.white}) {
/*     Toast.show(message, ctx,
        duration: duration,
        gravity: Toast.CENTER,
        backgroundColor: AppColors.green);  */

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: duration,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: 16.0);
  }
}
/*   static void showErrorMessage(String message, BuildContext ctx,
      {int duration = 5,
      Color backgroundColor = AppColors.white,
      Color textColor = Colors.white}) {
    Toast.show(message, ctx,
        duration: duration,
        gravity: Toast.CENTER,
        backgroundColor: AppColors.red);
  }
} */
