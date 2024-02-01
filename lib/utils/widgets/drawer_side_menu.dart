import 'package:Friend_Ledger/screens/bill_tracker_screen/bill_tracker_screen.dart';
import 'package:Friend_Ledger/screens/friend_ledger_screen/friend_ledger_screen.dart';
import 'package:Friend_Ledger/screens/home_screen/home_screen.dart';
import 'package:Friend_Ledger/screens/note_screen/note_screen.dart';
import 'package:Friend_Ledger/screens/profile_screen/profile_screen.dart';
import 'package:Friend_Ledger/screens/shopping_ledger_screen/shopping_ledger_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/util/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerSideMenu extends StatefulWidget {
  const DrawerSideMenu({super.key});

  @override
  State<DrawerSideMenu> createState() => _DrawerSideMenuState();
}

class _DrawerSideMenuState extends State<DrawerSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ashish Rawat"),
            accountEmail: Text("ashishrawat2911@gmail.com"),
            currentAccountPicture: InkWell(
              onTap: () => Get.to(()=>ProfileScreen()),
              child: CircleAvatar(
                backgroundColor: Colore.WHITE,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text(Strings.HOME),
            onTap: () {
              Navigator.pop(context);
              Get.to(() => HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined),
            title: const Text(Strings.FRIEND_LEDGER),
            onTap: () {
              Get.to(() => FriendLedgerScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop_2_outlined),
            title: const Text(Strings.SHOPPING_LEDGER),
            onTap: () {
              Get.to(() => ShoppingLedgerScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.auto_graph_outlined),
            title: const Text(Strings.BILL_TRACKER),
            onTap: () {
              Get.to(() => BillTrackerScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: const Text(Strings.NOTE),
            onTap: () {
              Get.to(() => NoteScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              SnackBarUtils.logoutMessage(context,
                  message: Strings.ARE_YOU_SURE_YOU_WANT_TO_LOGOUT);
            },
          ),
        ],
      ),
    );
  }
}
