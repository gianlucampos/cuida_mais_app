import 'package:cuida_mais_app/core/app_colors.dart';
import 'package:flutter/material.dart';

Center elevatedButton(
    {required String label,
    required Function onPressedAction,
    TextStyle? textStyle}) {
  return Center(
    child: SizedBox(
      height: 50,
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(AppColors.greenSecondary),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.black)),
          ),
        ),
        onPressed: () => onPressedAction.call(),
        child: Text(label,
            style: textStyle ??=
                const TextStyle(fontSize: 15, color: Colors.white)),
      ),
    ),
  );
}
