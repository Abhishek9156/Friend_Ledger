import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/util/snack_bar.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddShoppingLedgerScreen extends StatefulWidget {
  const AddShoppingLedgerScreen({super.key});

  @override
  State<AddShoppingLedgerScreen> createState() =>
      _AddShoppingLedgerScreenState();
}

class _AddShoppingLedgerScreenState extends State<AddShoppingLedgerScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                color: Colore.LIGHT_PINK,
                title: Strings.ADD_SHOPPING_LEDGER,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              10.heightBox,
              TextFieldWidget(
                  label: Strings.TITLE,
                  hint: Strings.TITLE,
                  type: TextInputType.text),
              10.heightBox,
              TextFieldWidget(
                  hint: Strings.DESCRIPTION,
                  type: TextInputType.text,
                  label: Strings.DESCRIPTION,
                  maxline: 3),
              10.heightBox,
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colore.GREY_HINT),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 40,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: isSwitched,
                          activeColor: Colore.WHITE,
                          inactiveTrackColor: Colore.BLACK,
                          inactiveThumbColor: Colore.WHITE,
                          activeTrackColor: Colore.LIGHT_PINK,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ),
                    ),
                    5.widthBox,
                    CustomTextWidget(
                      title: Strings.FIX_BUDGET,
                      fontSize: 15,
                      color: Colore.GREY_HINT,
                    )
                  ],
                ),
              ),
              10.heightBox,
              isSwitched
                  ? TextFieldWidget(
                      hint: Strings.AMOUNT,
                      type: TextInputType.number,
                      label: Strings.AMOUNT,
                    )
                  : SizedBox.shrink(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget(onPressed: () {}, text: Strings.CLOSE,color: Colore.LIGHT_PINK),
                  10.widthBox,
                  ButtonWidget(onPressed: () {}, text: Strings.CREATE,color: Colore.LIGHT_PINK,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
