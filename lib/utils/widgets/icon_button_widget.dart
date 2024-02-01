import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;

  const IconButtonWidget(
      {super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 40.0,
        width: 40.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colore.LIGHT_GREY,),

        child: Center(
          child: IconButton(
            onPressed: onPressed,
            icon: icon,
            color: Colore.BLACK,
          ),
        ),
      ),
    );
  }
}
