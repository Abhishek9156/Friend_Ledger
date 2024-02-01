import 'package:Friend_Ledger/screens/auth_screen/signup_screen.dart';
import 'package:Friend_Ledger/screens/forgot_password_screen/find_account_screen.dart';
import 'package:Friend_Ledger/screens/home_screen/home_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final signInKey = GlobalKey<FormState>();

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: signInKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Align(
                alignment: Alignment.topLeft,
                child: CustomTextWidget(
                  title: Strings.WELCOME_BACK,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            Align(
                alignment: Alignment.topLeft,
                child: CustomTextWidget(
                    title: Strings.MAKE_IT_WORK_MAKE_IT_RIGHT_MAKE_FAST)),
            15.heightBox,
            TextFieldWidget(
                errorMessage: Strings.PLEASE_ENTER_YOUR_EMAIL_OR_MOBILE,
                hint: Strings.EMAIL_OR_NUMBER,
                type: TextInputType.text,
                controller: emailController),
            SizedBox(
              height: 10,
            ),
            TextFieldWidget(
                errorMessage: Strings.PLEASE_ENTER_YOUR_PASSWORD,
                hint: Strings.PASSWORD,
                type: TextInputType.visiblePassword,
                controller: passwordController),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () => Get.to(() =>
                    const FindAccountScreen()),
                    child: const CustomTextWidget(
                      title: Strings.FORGOT_PASSWORD,
                      color: Colore.ORANGE,
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
                widht: MediaQuery.of(context).size.width * 0.6,
                onPressed: () {
                  Get.to(() => HomeScreen());
                },
                text: Strings.SIGNIN),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => Get.to(() => const SignUpScreen()),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colore.BLACK),
                      children: [
                    TextSpan(text: Strings.NEED_AN_ACCOUNT),
                    TextSpan(
                        text: Strings.SIGNUP,
                        style: TextStyle(
                            color: Colore.ORANGE, fontWeight: FontWeight.bold)),
                  ])),
            )
          ]),
        ),
      ),
    ));
  }
}
