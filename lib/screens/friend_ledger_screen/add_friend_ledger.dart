import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/util/snack_bar.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_dropdown.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/dateWidget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddFriendLedger extends StatefulWidget {
   AddFriendLedger({super.key});
  final List<String> mode = [
  'Online',
  'Cash'];

  @override
  State<AddFriendLedger> createState() => _AddFriendLedgerState();
}

class _AddFriendLedgerState extends State<AddFriendLedger> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextWidget(
                   color: Colore.VOLITE,
                  title: Strings.ADD_LEDGER,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                  label: Strings.DESCRIPTION,
                  maxline: 2,
                ),
                10.heightBox,
                TextFieldWidget(
                  prefixIcon: Icon(Icons.person_outline_sharp),
                  hint: Strings.PERSON_NAME,
                  type: TextInputType.text,
                  label: Strings.PERSON_NAME,
                ),
                10.heightBox,
                TextFieldWidget(
                  hint: "eg: 500",
                  prefixIcon: Icon(Icons.money_outlined),
                  type: TextInputType.number,
                  label: Strings.AMOUNT,
                ),
                10.heightBox,
                CustomDropDown(items: widget.mode, onUpdateValue: (String? onUpdateValue){

                }, lable: Strings.MODE),
                10.heightBox,

                TextFieldWidget(
                  prefixIcon: Icon(Icons.book_outlined),
                  hint: Strings.TRANSACTION_DESCRIPTION,
                  type: TextInputType.text,
                  label: Strings.TRANSACTION_DESCRIPTION,
                  maxline: 2,
                ),
                10.heightBox,
                DateWidget(
                    hint: Strings.DATE_OF_TRANSACTION,
                    label: Strings.DATE_OF_TRANSACTION),
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
                            activeTrackColor: Colore.VOLITE,
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
                        title: Strings.SHARE,
                        fontSize: 15,
                        color: Colore.GREY_HINT,
                      )
                    ],
                  ),
                ),
                10.heightBox,
                isSwitched
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextWidget(title: Strings.SHARE_WITH),
                              5.widthBox,
                              InkWell(
                                onTap: () {
                                  SnackBarUtils.infoMessage(context);
                                },
                                child: Icon(
                                  Icons.info_outline,
                                  color: Colore.VOLITE,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          10.heightBox,
                          TextFieldWidget(
                            prefixIcon: Icon(Icons.phone_android_outlined),
                            hint: Strings.PHONE_NUMBER,
                            type: TextInputType.number,
                            label: Strings.PHONE_NUMBER,
                          ),
                          10.heightBox,
                          ButtonWidget(
                              onPressed: () {},
                              text: Strings.ADD,
                              color: Colore.VOLITE),
                        ],
                      )
                    : SizedBox.shrink(),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonWidget(color: Colore.VOLITE,onPressed: () {}, text: Strings.CLOSE),
                    10.widthBox,
                    ButtonWidget(color: Colore.VOLITE,onPressed: () {}, text: Strings.CREATE)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
