import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final Function(String?) onUpdateValue;
  final String lable;

  CustomDropDown({
    Key? key,
    required this.items,
    required this.onUpdateValue, required this.lable,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.pages_outlined),
            label: Text(widget.lable),
            hintText: (widget.lable),
            border: OutlineInputBorder(
                gapPadding: 2, borderRadius: BorderRadius.circular(5))),
        items: widget.items
            .map((item) => DropdownMenuItem(
                  child: Text(item),
                  value: item,
                ))
            .toList(),
        onChanged: (String? newVal) {
          setState(() {
            widget.onUpdateValue(newVal);
          });
        });
  }
}
