import 'package:Friend_Ledger/screens/note_screen/add_note_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/util/snack_bar.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/drawer_side_menu.dart';
import 'package:Friend_Ledger/utils/widgets/floating_action_button.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:Friend_Ledger/utils/widgets/topbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colore.WHITE),backgroundColor: Colore.YELLOW,title: Text(Strings.NOTE,style: TextStyle(color: Colore.WHITE),)),
      drawer: DrawerSideMenu(),
        body: SafeArea(
          child: Container(
            height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TopBarWidget(
                  onPressed: () {},
                  icon: const Icon(Icons.refresh),
                  textEditingController: searchController),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButtons(
            color: Colore.YELLOW,
            onPress: () {
Get.to(()=>AddNoteScreen());
            }));
  }


}
