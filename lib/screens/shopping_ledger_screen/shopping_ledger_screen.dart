import 'package:Friend_Ledger/screens/shopping_ledger_screen/add_shopping_ledger_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/drawer_side_menu.dart';
import 'package:Friend_Ledger/utils/widgets/floating_action_button.dart';
import 'package:Friend_Ledger/utils/widgets/icon_button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/topbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingLedgerScreen extends StatelessWidget {
  const ShoppingLedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
        appBar: AppBar(iconTheme: IconThemeData(color: Colore.WHITE),backgroundColor: Colore.LIGHT_PINK,title: Text(Strings.SHOPPING_LEDGER,style: TextStyle(color: Colore.WHITE),)),
        drawer: DrawerSideMenu(),
        body: SafeArea(
          child: Container(
            height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TopBarWidget(
                  onPressed: () {},
                  icon: Icon(Colore.filter_alt_outlined),
                  textEditingController: searchController),
              IconButtonWidget(onPressed: () {}, icon: Icon(Icons.refresh)),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButtons(
            color: Colore.LIGHT_PINK,
            onPress: () {
              Get.to(() => AddShoppingLedgerScreen());
            }));
  }
}
