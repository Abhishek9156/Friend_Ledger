import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
      TextEditingController passwordController=TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
                title: Strings.RESET_PASSWORD,
                fontWeight: FontWeight.bold,
                fontSize: 20),

            10.heightBox,
            TextFieldWidget(
              prefixIcon: Icon(Icons.lock_outline),
              hint: Strings.NEW_PASSWORD,
              type: TextInputType.visiblePassword,
              controller: passwordController,
            ),
            10.heightBox,
            TextFieldWidget(
              prefixIcon: Icon(Icons.lock_outline),

              hint: Strings.CONFIRM_PASSWORD,
              type: TextInputType.visiblePassword,
              controller: passwordController,
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
                      onPressed: () {},
                      text: Strings.SAVE),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
