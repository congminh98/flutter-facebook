import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key key,
    this.icon,
    this.press,
    this.size,
  }) : super(key: key);
  final IconData icon;
  final Function press;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: size,
        color: Colors.black,
        onPressed: press,
      ),
    );
  }
}
