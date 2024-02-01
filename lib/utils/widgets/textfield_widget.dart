import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextInputType? textInputType;
  final String hint;
  final TextInputType type;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Icon? sufixIcon;

  final String? errorMessage;
  final String? label;
  final VoidCallback? onPress;
  final int? maxline;
  final bool radonly;

  TextFieldWidget({
    super.key,
    this.textInputType,
    required this.hint,
    required this.type,
    this.controller,
    this.prefixIcon,
    this.errorMessage,
    this.label,
    this.onPress,
    this.maxline, this.radonly=false, this.sufixIcon,
  });
  bool _isObscure = true;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  @override
  Widget build(BuildContext context) {
    final returnVal;

    widget.type != TextInputType.visiblePassword
        ? returnVal = TextFormField(
            readOnly: widget.radonly,
            maxLines: widget.maxline,

            validator: (value) {
              if (value!.isEmpty) {
                return widget.errorMessage;
              }
              return null;
            },
            controller: widget.controller,
            keyboardType: widget.type,
            onTap: widget.onPress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: widget.label,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.sufixIcon,
              hintText: widget.hint,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          )
        : returnVal = TextFormField(
            onTap: widget.onPress,
            controller: widget.controller,
            obscureText: widget._isObscure,
            validator: (value) {
              if (value!.isEmpty) {
                return widget.errorMessage;
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: widget.label,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: widget.prefixIcon,
                hintText: widget.hint,

                suffixIcon: IconButton(
                    icon: Icon(widget._isObscure
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        widget._isObscure = !widget._isObscure;
                      });
                    })),
          );
    return returnVal;
  }
}
