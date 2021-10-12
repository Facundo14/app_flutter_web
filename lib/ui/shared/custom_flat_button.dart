import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;

  const CustomFlatButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPress(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text),
      ),
      style: TextButton.styleFrom(
        primary: color,
      ),
    );
  }
}
