import 'package:Friend_Ledger/screens/forgot_password_screen/reset_password_screen.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpController=TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
                title: Strings.VERIFY_OTP,
                fontWeight: FontWeight.bold,
                fontSize: 20),
            10.heightBox,
            CustomTextWidget(
              title: Strings.AN_OTP_IS_SEND_TO_EMAIL,
            ),
            10.heightBox,
            TextFieldWidget(
              prefixIcon: Icon(Icons.phone_android_outlined),

              hint: Strings.PLEASE_ENTER_OTP,
              type: TextInputType.emailAddress,
              controller: otpController,
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                      widht: MediaQuery.of(context).size.width * 0.3,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: Strings.CANCEL),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidget(
                      widht: MediaQuery.of(context).size.width * 0.3,
                      onPressed: () {Get.to(()=>ResetPasswordScreen());},
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
