import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback handler;

  RoundIconButton(this.icon, this.handler);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4c4F5E),
      onPressed: handler,
      child: Icon(icon),
    );
  }
}
