import 'package:Friend_Ledger/utils/constant/color.dart';
import 'package:flutter/material.dart';

class NoneEditTextWidget extends StatefulWidget {
  final TextEditingController? controller;
  final VoidCallback? onPress;
  final Icon? prefixIcon;
  final Icon? sufixIcon;
  final String? label;
  final String? hint;
  final Color? hintColor;

  const NoneEditTextWidget(
      {super.key,
      this.controller,
      this.onPress,
      this.prefixIcon,
      this.sufixIcon,
      this.label,
      this.hint, this.hintColor});

  @override
  State<NoneEditTextWidget> createState() => _NoneEditTextWidgetState();
}

class _NoneEditTextWidgetState extends State<NoneEditTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          readOnly: true,
          autofocus: false,
          controller: widget.controller,
          onTap: widget.onPress,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colore.LIGHT_GREY,
            filled: true,
            labelText: widget.label,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.sufixIcon,
            hintText: widget.hint,
            hintStyle: TextStyle(color: widget.hintColor)
          )),
    );
  }
}
