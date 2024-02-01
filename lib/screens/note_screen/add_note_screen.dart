import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddNoteScreen extends StatefulWidget {
   AddNoteScreen({super.key});


  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextWidget(
                color: Colore.YELLOW,
                title: Strings.ADD_NOTE,
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
                maxline: 4,
              ),
              10.heightBox,

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget( color: Colore.YELLOW,onPressed: () {}, text: Strings.CLOSE),
                  10.widthBox,
                  ButtonWidget(color: Colore.YELLOW, onPressed: () {}, text: Strings.CREATE)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
