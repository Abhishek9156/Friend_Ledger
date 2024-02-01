import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class PasswordWidget extends StatelessWidget {
  final String hint;
  const PasswordWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PasswordField(
         hintText: hint,

        border: PasswordBorder(
          border: OutlineInputBorder(

            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            BorderSide(width: 2, color: Colors.red),
          ),
        ),

      ),
    );
  }
}
