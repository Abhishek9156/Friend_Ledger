import 'package:Friend_Ledger/screens/friend_ledger_screen/add_friend_ledger.dart';
import 'package:Friend_Ledger/screens/profile_screen/profile_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/drawer_side_menu.dart';
import 'package:Friend_Ledger/utils/widgets/floating_action_button.dart';
import 'package:Friend_Ledger/utils/widgets/icon_button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/topbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendLedgerScreen extends StatelessWidget {
  const FriendLedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color: Colore.WHITE),backgroundColor: Colore.VOLITE,title: Text(Strings.FRIEND_LEDGER,style: TextStyle(color: Colore.WHITE))),
        drawer: DrawerSideMenu(),
        body: SafeArea(
          child: Container(
            height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TopBarWidget(
                  onPressed: () {
                    Get.to(() => ProfileScreen());
                  },
                  icon: Icon(Colore.filter_alt_outlined),
                  textEditingController: searchController),
              IconButtonWidget(onPressed: () {}, icon: Icon(Icons.refresh)),
              IconButtonWidget(onPressed: () {}, icon: Icon(Icons.group)),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButtons(
            color: Colore.VOLITE,
            onPress: () {
              Get.to(() => AddFriendLedger());
            }));
  }
}
