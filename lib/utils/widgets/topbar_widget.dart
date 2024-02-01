import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/widgets/icon_button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';

class TopBarWidget extends StatelessWidget {
  final Icon icon;
  final TextEditingController textEditingController;
  final VoidCallback onPressed;

  const TopBarWidget(
      {super.key, required this.icon, required this.textEditingController, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.6,
              height: 60,
              child: TextFieldWidget(
                hint: "Search...",
                controller: textEditingController,
                prefixIcon: Icon(Icons.search),
                type: TextInputType.text,
              )),
          IconButtonWidget(onPressed: onPressed, icon: icon),
        ],
      ),
    );
  }
}
