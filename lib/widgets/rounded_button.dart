import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.heroTag,
  });

  final IconData icon;
  final String heroTag;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(56, 56),
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff4c4f5e),
        foregroundColor: Colors.white,
      ),
      onPressed: onTap,
      child: Icon(icon),
    );
  }
}
