import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final String? errorMessage;
  final String? label;

  const DateWidget({
    super.key,
    required this.hint,
     this.controller,
    this.errorMessage,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () async {
        DateTime? pickDate = await showDatePicker(
            context: context,
            firstDate: DateTime(1980),
            initialDate: DateTime.now(),
            lastDate: DateTime.now());
        if (pickDate != null) {
          String formatedDate = DateFormat("dd-MMM-yyyy").format(pickDate);

          controller!.text = formatedDate.toString();
          print(formatedDate);
        } else
          print("Not selcted");
      },
      validator: (value) {
        if (value!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        prefixIcon: Icon(Icons.calendar_month_outlined),
        hintText: hint,
      ),
    );
  }
}
