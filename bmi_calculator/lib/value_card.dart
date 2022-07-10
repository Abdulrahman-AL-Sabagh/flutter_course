import 'package:bmi_calculator/roundIconButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class ValueCard extends StatefulWidget {
  final String label;
  int standardValue;

  ValueCard(this.label, this.standardValue, {Key? key}) : super(key: key);

  @override
  State<ValueCard> createState() => _ValueCardState();
}

class _ValueCardState extends State<ValueCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.label,
          style: labelTextStyle,
        ),
        Text(widget.standardValue.toString(), style: numberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(FontAwesomeIcons.minus,
                () => setState(() => widget.standardValue--)),
            const SizedBox(
              width: 10,
            ),
            RoundIconButton(FontAwesomeIcons.plus,
                () => setState(() => widget.standardValue++))
          ],
        )
      ],
    );
    ;
  }
}
