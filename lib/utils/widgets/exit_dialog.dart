import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/exit_dialog_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Strings.ARE_YOU_SURE.text.size(18).color(Colore.WHITE).make(),
        const Divider(),
        10.heightBox,
        Strings.ARE_YOU_SURE_YOU_WANT_TO_EXIT.text
            .size(16)
            .color(Colore.WHITE)
            .make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourButton(
                color: Colore.ORANGE,
                onpress: () {
                  SystemNavigator.pop();
                },
                textcolor: Colore.WHITE,
                title: Strings.YES),
            ourButton(
                color: Colore.ORANGE,
                onpress: () {
                  Navigator.pop(context);
                },
                textcolor: Colore.WHITE,
                title: Strings.NO),
          ],
        )
      ],
    ).box.color(Colore.BLACK).padding(const EdgeInsets.all(12)).rounded.make(),
  );
}
