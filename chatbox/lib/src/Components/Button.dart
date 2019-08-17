import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final bool enabled;
  
  final double horizontalPadding;
  final double verticalPadding;

  final String text;

  final VoidCallback onPressed;

  final Color color;

  final IconData prefixIcon;
  final IconData suffixIcon;

  Button({
    Key key,
    this.onPressed,
    this.enabled = true,
    this.horizontalPadding = 0.0,
    this.verticalPadding = 0.0,
    this.color = Colors.grey,
    this.prefixIcon,
    this.suffixIcon,
    this.text = ''
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: OutlineButton(
        key: key,
        onPressed: enabled ? () { FocusScope.of(context).requestFocus(FocusNode()); if(onPressed != null) onPressed(); } : null ,
        textColor: color,
        textTheme: ButtonTextTheme.primary,
        highlightedBorderColor: color,
        borderSide: BorderSide(
          color: color,
          width: 2.5
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            prefixIcon != null ? Icon(prefixIcon, color: color,) : Text(''),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                text,
                style: TextStyle(
                  color: color
                ),
              ),
            ),
            suffixIcon != null ? Icon(suffixIcon, color: color) : Text('')
          ],
        ),
      ),
    );
  }

}