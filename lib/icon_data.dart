import 'package:flutter/material.dart';

class IconDataWidget extends StatelessWidget {
  final IconData fontAwesmeIco;
  final String labelText;

  IconDataWidget({this.fontAwesmeIco, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesmeIco,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(labelText)
      ],
    );
  }
}
