import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {

  final autofocus;
  final bool enabled;
  final bool obscureText;
  final bool readOnly;

  final double horizontalPadding;
  final double verticalPadding;

  final int maxLength;

  final Color color;
  final Color colorBorder;

  final IconData prefixIcon;
  final IconData suffixIcon;

  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String text;
  final String labelText;

  final void Function(String) onChanged;

  TextInput({
    Key key,
    this.onChanged,
    this.maxLength,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.text = '',
    this.labelText = '',
    this.horizontalPadding = 0.0,
    this.verticalPadding = 0.0,
    this.enabled = true,
    this.autofocus = false,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
    this.colorBorder = Colors.grey,
    this.color = Colors.grey,
  }) : super();

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
    child: TextField(
      key: key,
      autofocus: autofocus,
      textInputAction: textInputAction,
      enabled: enabled,
      showCursor: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      enableInteractiveSelection: true,
      onChanged: onChanged,
      maxLength: maxLength,
      controller: text != null ? TextEditingController(text: text) : null,
      style: TextStyle(
        color: color,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        counter: Row(),
        counterStyle: TextStyle(height: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 3.0
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder,
            width: 3.0
          )
        ),
        labelStyle: TextStyle(
          backgroundColor: Colors.transparent,
          fontFamilyFallback: <String>['Meiryo']
        ),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: color,) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: color,) : null
      ),
    ),
  );
}
