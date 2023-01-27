import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.value, required this.onPressed, this.padding});

  String value;
  Function() onPressed;
  EdgeInsetsGeometry? padding;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: 400,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(value)
      ),
    );
  }
}
