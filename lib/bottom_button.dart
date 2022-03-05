import 'package:flutter/material.dart';

Color bottomBarColor = Color(0xFFFF0067);

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonText, this.onTap});
  String buttonText;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(buttonText),
        ),
        color: bottomBarColor,
      ),
    );
  }
}
