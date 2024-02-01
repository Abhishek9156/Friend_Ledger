import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_dropdown.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/dateWidget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddBillTrackerScreen extends StatefulWidget {
  AddBillTrackerScreen({super.key});

  final List<String> role = [
    'Medical bills',
    'Electronics bills',
    'Mechanical bills',
    'Others'
  ];
  String? bill='';

  @override
  State<AddBillTrackerScreen> createState() => _AddBillTrackerScreenState();
}

class _AddBillTrackerScreenState extends State<AddBillTrackerScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                color: Colore.TEAL,
                title: Strings.ADD_BILL_TRACKER,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              20.heightBox,
              TextFieldWidget(
                prefixIcon: Icon(Icons.title_outlined),
                hint: Strings.TITLE,
                type: TextInputType.text,
                label: Strings.TITLE,
              ),
              10.heightBox,
              TextFieldWidget(
                hint: Strings.DESCRIPTION,
                type: TextInputType.text,
                maxline: 3,
                label: Strings.DESCRIPTION,
              ),
              10.heightBox,
              const DateWidget(
                  hint: Strings.DATE_OF_BILLING,
                  label: Strings.DATE_OF_BILLING),
              10.heightBox,
              CustomDropDown(
                lable: Strings.SELECT_BILL_TYPE,
                  items: widget.role, onUpdateValue: (String? onUpdateValue) {
                    setState(() {
                      widget.bill=onUpdateValue;
                      print(widget.bill);
                    });
              }),
              10.heightBox,
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colore.GREY_HINT),
                    borderRadius: const BorderRadius.all(
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
                          activeTrackColor: Colore.TEAL,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ),
                    ),
                    5.widthBox,
                    const CustomTextWidget(
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
                      prefixIcon: Icon(Icons.money_outlined),
                      type: TextInputType.number,
                      label: Strings.AMOUNT,
                    )
                  : const SizedBox.shrink(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget(
                      onPressed: () {},
                      text: Strings.CLOSE,
                      color: Colore.TEAL),
                  10.widthBox,
                  ButtonWidget(
                    onPressed: () {},
                    text: Strings.CREATE,
                    color: Colore.TEAL,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
