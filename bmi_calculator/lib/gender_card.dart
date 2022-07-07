import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  late final Icon _icon;
  late final String _text;

  GenderCard({Key? key, required Icon icon, required String text})
      : super(key: key) {
    _icon = icon;
    _text = text;
  }

  Icon get icon => _icon;

  String get text => _text;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          const SizedBox(
            height: 15.0,
          ),
          Text(
            _text,
            style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
          )
        ]);
  }
}
