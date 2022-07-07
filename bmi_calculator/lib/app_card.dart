import 'package:flutter/cupertino.dart';

class AppCard extends StatefulWidget {
  late final Widget? _child;
  late Color _color;
  late Color _inactiveCardColor;

  AppCard(
      {Key? key,
      required Color color,
      required Color inactiveCardColor,
      Widget? child})
      : super(key: key) {
    _color = color;
    _child = child;
    _inactiveCardColor = inactiveCardColor;
  }

  Color get color => _color;

  Widget? get child => _child;

  Color get inactiveCardColor => _inactiveCardColor;

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  late Color currentColor = widget.color;

  void changeColor() {
    setState(() {
      currentColor = currentColor == widget.inactiveCardColor
          ? widget.color
          : widget.inactiveCardColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: UniqueKey(),
      child: GestureDetector(
        onTap: () => changeColor(),
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: currentColor, borderRadius: BorderRadius.circular(15)),
          child: widget.child,
        ),
      ),
    );
  }
}
