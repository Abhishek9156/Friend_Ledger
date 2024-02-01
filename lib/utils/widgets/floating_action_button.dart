import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';

class FloatingActionButtons extends StatelessWidget {
  final VoidCallback onPress;
  final Color color;

  const FloatingActionButtons(
      {super.key, required this.onPress, required this.color});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: color,
      child: Icon(
        Icons.add,
        color: Colore.WHITE,
      ),
    );
  }
}
