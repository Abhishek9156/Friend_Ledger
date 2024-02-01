import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;

  final double? widht;

  const ButtonWidget(
      {super.key, required this.onPressed, required this.text, this.widht, this.color = Colore
          .BLACK});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colore.WHITE),
        ),
      ),
    );
  }
}
