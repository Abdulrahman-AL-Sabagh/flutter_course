import 'package:flutter/cupertino.dart';

class AppCard extends StatelessWidget {
  late final Color _color;
  late final Widget? _child;

  AppCard({Key? key, required Color color, Widget? child}) : super(key: key) {
    _color = color;
    _child = child;
  }

  Color get color => _color;

  Widget? get child => _child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: UniqueKey(),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: child,
      ),
    );
  }
}
