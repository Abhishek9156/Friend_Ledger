import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/images.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/util/snack_bar.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/none_edit_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 48,
                    child:
                        InkWell(onTap: () {}, child: Image.asset(imgProfile)),
                  ),
                  Icon(
                    Icons.edit, // Replace with the icon you want
                    size: 20.0,
                    color: Colore.ORANGE,
                  ),
                ],
              ),
              10.heightBox,
              CustomTextWidget(title: "Abhishek Kumar", fontSize: 20),
              10.heightBox,
              NoneEditTextWidget(
                onPress: () {
                  SnackBarUtils.editInfoMessage(context,
                      hint: Strings.PLEASE_ENTER_YOUR_EMAIL,
                      icon: Icon(Icons.email_outlined),
                      textInputType: TextInputType.emailAddress,
                      onPress: () {});
                },
                hint: Strings.EMAIL,
                sufixIcon: Icon(Icons.edit_outlined),
              ),
              NoneEditTextWidget(
                onPress: () {
                  SnackBarUtils.editInfoMessage(context,
                      hint: Strings.PLEASE_ENTER_NUMBER,
                      icon: const Icon(Icons.phone_android_outlined),
                      textInputType: TextInputType.number,
                      onPress: () {});
                },
                hint: Strings.PHONE_NUMBER,
                sufixIcon: Icon(Icons.edit_outlined),
              ),
              NoneEditTextWidget(
                  hint: Strings.PASSWORD, sufixIcon: Icon(Icons.edit_outlined)),
              NoneEditTextWidget(
                  onPress: () async {
                    Uri url = Uri.parse('https://www.friendsledger.com/about');
                    if (!await launchUrl(url,
                        mode: LaunchMode.inAppBrowserView)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  hint: Strings.ABOUT_US,
                  sufixIcon: Icon(Icons.arrow_forward)),
              NoneEditTextWidget(
                onPress: ()async {
                  Uri url = Uri.parse('https://www.friendsledger.com/getting-started');
                  if (!await launchUrl(url,
                      mode: LaunchMode.inAppBrowserView)) {
                    throw Exception('Could not launch $url');
                  }
                },
                  hint: Strings.QUICK_DEMO,
                  sufixIcon: Icon(Icons.movie_outlined)),
              NoneEditTextWidget(
                  onPress: () {
                    SnackBarUtils.logoutMessage(context,
                        message: Strings.ARE_YOU_SURE_YOU_WANT_TO_LOGOUT);
                  },
                  hint: Strings.LOGOUT,
                  sufixIcon: Icon(Icons.logout_outlined)),
              NoneEditTextWidget(
                  onPress: () {
                    SnackBarUtils.logoutMessage(context,
                        message: Strings
                            .ARE_YOU_SURE_YOU_WANT_TO_LOGOUT_FROM_ALL_DEVICE);
                  },
                  hint: Strings.LOG_OUT_FROM_ALL_DEVICES,
                  sufixIcon: Icon(Icons.logout_sharp)),
              NoneEditTextWidget(
                  onPress: () {
                    SnackBarUtils.editInfoMessage(context,
                        title: Strings.DELETE_MY_ACCOUNT,
                        hint: Strings.CONFIRM_PASSWORD,
                        icon: const Icon(Icons.lock_outline),
                        textInputType: TextInputType.text,
                        onPress: () {});
                  },
                  hint: Strings.DELETE_MY_ACCOUNT,
                  hintColor: Colore.ORANGE,
                  sufixIcon: Icon(
                    Icons.delete_outline,
                    color: Colore.ORANGE,
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
