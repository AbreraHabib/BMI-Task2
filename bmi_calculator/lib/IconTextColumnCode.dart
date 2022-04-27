import 'package:flutter/material.dart';
import 'constant_material.dart';

class IconTextColumnCode extends StatelessWidget {
  IconTextColumnCode({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: KTextStyle,
        )
      ],
    );
  }
}
