import 'package:Friend_Ledger/screens/forgot_password_screen/otp_verify_screen.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class FindAccountScreen extends StatelessWidget {
  const FindAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroler = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
                title: Strings.FIND_MY_ACCOUNT, fontWeight: FontWeight.bold,fontSize: 20),
            10.heightBox,
            CustomTextWidget(
              title: Strings.ENTER_YOUR_EMAIL_TO_SEARCH,
            ),
            10.heightBox,
            TextFieldWidget(
              prefixIcon: Icon(Icons.email_outlined),

              hint: Strings.PLEASE_ENTER_YOUR_EMAIL,
              type: TextInputType.emailAddress,
              controller: emailcontroler,
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                      widht: MediaQuery.of(context).size.width * 0.3,
                      onPressed: () {Navigator.pop(context);},
                      text: Strings.CANCEL),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                      widht: MediaQuery.of(context).size.width * 0.3,
                      onPressed: () {
                        Get.to(()=>OtpVerifyScreen());
                      },
                      text: Strings.SEARCH),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
