import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:Friend_Ledger/utils/constant/images.dart';
import 'package:Friend_Ledger/utils/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class SnackBarUtils {
  static snackBar(String title, String message, Color coloricon,
      Color bodyColor, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: bodyColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  const SizedBox(width: 48),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white)),
                        const Spacer(),
                        Text(
                          message,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(20)),
                  child: Stack(
                    children: [
                      Image.asset(
                        imgBubble,
                        height: 48,
                        width: 40,
                        color: coloricon,
                      )
                    ],
                  ),
                )),
            Positioned(
                top: -20,
                left: 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      imgMessage,
                      color: coloricon,
                      height: 40,
                    ),
                    const Positioned(
                        top: 10,
                        child: Icon(
                          Icons.close,
                          color: Colore.WHITE,
                          size: 15,
                        )
                      // Image.asset(
                      //   imgNote,
                      //   height: 40,
                      // )
                    )
                  ],
                ))
          ],
        )));
  }

  static Future infoMessage(BuildContext context) async {
    return await QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      confirmBtnColor: Colore.YELLOW,
      textAlignment: TextAlign.start,
      title: "INFO",
      confirmBtnTextStyle: TextStyle(color: Colore.WHITE),
      text: Strings.ENTER_PERSON_NUMBER_WITH_WHOM_YOU_ARE_DOING_TRANSCATION,
    );
  }

  static editInfoMessage(BuildContext context,{String? title,
      String? hint,
        Icon? icon,
        TextInputType? textInputType,
        VoidCallback? onPress}) {
    return QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      title: title,
      widget: TextFormField(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hint,
          prefixIcon: icon,
        ),
        textInputAction: TextInputAction.next,
        keyboardType: textInputType,
      ),
      confirmBtnText: Strings.YES,
      onConfirmBtnTap: onPress,
      cancelBtnText: Strings.NO,
      confirmBtnColor: Colore.TEAL1,
    );
  }

  static logoutMessage(BuildContext context, {String? message}) {
    return QuickAlert.show(context: context,
      type: QuickAlertType.confirm,
      title: "",
      text: message,
      textAlignment: TextAlign.start,
      confirmBtnText: Strings.YES,
      cancelBtnText: Strings.NO,
      confirmBtnColor: Colore.TEAL1);
  }
}
