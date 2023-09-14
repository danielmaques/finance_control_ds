import 'package:flutter/material.dart';

class CustomDrawerButton extends StatelessWidget {
  final String label;
  final Widget icon;
  final Function onPressed;

  const CustomDrawerButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 5),
            Text(label),
          ],
        ),
      ),
    );
  }
}
