import 'package:flutter/material.dart';
class ProductivityButton extends StatelessWidget {
  late final Color color;
  late final String text;
  late final double size;
  late final VoidCallback onPressed;

  ProductivityButton({required this.color, required this.text, required this.size, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: this.color,
      minWidth: this.size,
      onPressed: this.onPressed,
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
