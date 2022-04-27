import 'package:flutter/material.dart';

class ContainerCode extends StatelessWidget {
  ContainerCode({required this.colors, this.cardWidget});
  final Color colors;
  final cardWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
