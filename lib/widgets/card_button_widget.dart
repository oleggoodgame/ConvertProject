import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final VoidCallback onTap;

  const CardButton({
    super.key,
    this.label,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.grey.shade400
        ),
        width: 60,
        height: 60,
        child: Center(
          child: icon != null
              ? Icon(icon, size: 28)
              : Text(
                  label ?? '',
                  style: const TextStyle(fontSize: 24),
                ),
        ),
      ),
    );
  }
}
