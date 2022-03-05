import 'package:flutter/material.dart';

class InputCardWidget extends StatelessWidget {
  final Color colour;
  final Widget cardchild;
  final Function onPress;
  InputCardWidget({this.colour, this.cardchild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
