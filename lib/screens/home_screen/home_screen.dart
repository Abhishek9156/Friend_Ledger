import 'package:Friend_Ledger/screens/bill_tracker_screen/bill_tracker_screen.dart';
import 'package:Friend_Ledger/screens/friend_ledger_screen/friend_ledger_screen.dart';
import 'package:Friend_Ledger/screens/note_screen/note_screen.dart';
import 'package:Friend_Ledger/screens/profile_screen/profile_screen.dart';
import 'package:Friend_Ledger/screens/shopping_ledger_screen/shopping_ledger_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/images.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/drawer_side_menu.dart';
import 'package:Friend_Ledger/utils/widgets/exit_dialog.dart';
import 'package:Friend_Ledger/utils/widgets/listtile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didpop){
        if(didpop){
          return;
        }

        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => exitDialog(context));
      }


      ,
      child: Scaffold(
        appBar: AppBar(title: Text(Strings.HOME)),
        drawer: DrawerSideMenu(), //Drawer
        body: SafeArea(
            child: Column(
          children: [
            ListTileWidget(
                fontWeight: FontWeight.bold,
                textColor: Colore.WHITE,
                color: Colore.VOLITE,
                ontap: () => Get.to(() => FriendLedgerScreen()),
                title: Strings.FRIEND_LEDGER,
                image: Image.asset(imgFriend)),
            ListTileWidget(
                fontWeight: FontWeight.bold,
                textColor: Colore.WHITE,
                color: Colore.LIGHT_PINK,
                ontap: () => Get.to(() => ShoppingLedgerScreen()),
                title: Strings.SHOPPING_LEDGER,
                image: Image.asset(imgShopping)),
            ListTileWidget(
                fontWeight: FontWeight.bold,
                textColor: Colore.WHITE,
                color: Colore.TEAL,
                ontap: () => Get.to(() => BillTrackerScreen()),
                title: Strings.BILL_TRACKER,
                image: Image.asset(imgDaily)),
            ListTileWidget(
                fontWeight: FontWeight.bold,
                textColor: Colore.WHITE,
                color: Colore.YELLOW,
                ontap: () => Get.to(() => NoteScreen()),
                title: Strings.NOTE,
                image: Image.asset(imgNote)),
          ],
        ),
        ),
      ),
    );
  }
}
