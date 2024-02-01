import 'package:Friend_Ledger/screens/auth_screen/signin_screen.dart';
import 'package:Friend_Ledger/screens/auth_screen/signup_screen.dart';
import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:Friend_Ledger/utils/widgets/button_widget.dart';
import 'package:Friend_Ledger/utils/widgets/custom_text_widget.dart';
import 'package:Friend_Ledger/utils/widgets/dateWidget.dart';
import 'package:Friend_Ledger/utils/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    TextEditingController dobController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget(
                    title: Strings.GET_ON_BOARD,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidget(
                      title: Strings.CREATE_YOUR_PROFILE_START_YOUR_JOURNEY),
                ),
                10.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hint: Strings.FIRST_NAME,
                    label: Strings.FIRST_NAME,
                    type: TextInputType.text),
                15.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hint: Strings.LAST_NAME,
                    label: Strings.LAST_NAME,
                    type: TextInputType.text),
                15.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.email_outlined),
                    hint: Strings.EMAIL,
                    label: Strings.EMAIL,
                    type: TextInputType.text),
                15.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    hint: Strings.PHONE_NUMBER,
                    label: Strings.PHONE_NUMBER,
                    type: TextInputType.number),
                15.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.lock_outline),
                    hint: Strings.NEW_PASSWORD,
                    label: Strings.NEW_PASSWORD,
                    type: TextInputType.visiblePassword),
                15.heightBox,
                TextFieldWidget(
                    prefixIcon: Icon(Icons.lock_outline),
                    hint: Strings.CONFIRM_PASSWORD,
                    label: Strings.CONFIRM_PASSWORD,
                    type: TextInputType.visiblePassword),
                15.heightBox,
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1, color: Colors.grey.shade800),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: CustomTextWidget(
                          title: Strings.GENDER,
                          fontSize: 15,
                        ),
                      ),
                      Radio(
                        value: Strings.MALE,
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      Text(Strings.MALE),
                      Radio(
                        value: Strings.FEMALE,
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      Text(Strings.FEMALE),
                      Radio(
                        value: Strings.OTHER,
                        groupValue: selectedGender,
                        onChanged: (String? value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                      Text(Strings.OTHER),
                    ],
                  ),
                ),
                15.heightBox,
                DateWidget(
                    controller: dobController,
                    hint: Strings.DATE_OF_BIRTH,
                    label: Strings.DATE_OF_BIRTH),
                20.heightBox,
                ButtonWidget(
                    widht: MediaQuery.of(context).size.width * 0.6,
                    onPressed: () {},
                    text: Strings.SIGNUP),
                10.heightBox,
                InkWell(
                  onTap: () => Get.to(() => const SignInScreen()),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colore.BLACK),
                          children: [
                        TextSpan(text: Strings.ALREADY_HAVE_AN_ACCOUNT),
                        TextSpan(
                            text: Strings.SIGNIN,
                            style: TextStyle(
                                color: Colore.ORANGE,
                                fontWeight: FontWeight.bold)),
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
