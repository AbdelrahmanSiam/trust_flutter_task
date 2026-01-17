import 'package:flutter/material.dart';

class CustomQuantityButton extends StatefulWidget {
  const CustomQuantityButton({super.key, this.onPressed, required this.backgroundColor, required this.icon});
 final void Function()? onPressed;
 final Color backgroundColor;
 final IconData icon;

  @override
  State<CustomQuantityButton> createState() => _CustomQuantityButtonState();
}

class _CustomQuantityButtonState extends State<CustomQuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: widget.onPressed,
        icon: Icon(widget.icon),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        iconSize: 18,
      ),
    );
  }
}
