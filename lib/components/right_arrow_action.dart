import 'package:collectivity_demo/utils/constantes.dart';
import 'package:flutter/material.dart';

class OpenFlutterRightArrow extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  const OpenFlutterRightArrow(this.text, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 14, color: AppColors.red),
              ),
            ),
            Icon(
              Icons.trending_flat,
              color: AppColors.red,
            )
          ],
        ),
      ),
    );
  }
}
