import 'package:flutter/material.dart';

class ButtonFunction extends StatelessWidget {
  const ButtonFunction({
    Key key,
    this.icon,
    this.press,
    this.label,
  }) : super(key: key);
  final Icon icon;
  final Function press;
  final String label;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton.icon(
      onPressed: press,
      icon: icon,
      label: Text(label),
    );
  }
}
