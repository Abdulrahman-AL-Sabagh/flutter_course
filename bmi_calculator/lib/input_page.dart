import 'package:bmi_calculator/gender_enum.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/value_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "app_card.dart";
import 'constants.dart';
import 'gender_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <AppCard>[
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                inactiveCardColor: inactiveCardColor,
                child: GenderCard(
                    key: UniqueKey(),
                    icon: const Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    text: GenderType.MALE.name),
              ),
              AppCard(
                inactiveCardColor: inactiveCardColor,
                key: UniqueKey(),
                color: containerColor,
                child: GenderCard(
                  key: UniqueKey(),
                  text: GenderType.FEMALE.name,
                  icon: const Icon(
                    FontAwesomeIcons.venus,
                    size: 80,
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <AppCard>[
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                inactiveCardColor: inactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Height",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text("$height", style: numberTextStyle),
                        const Text(
                          "cm",
                          style: labelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          activeTrackColor: Colors.white,
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) =>
                              setState(() => height = newValue.round())),
                    ),
                  ],
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            children: <AppCard>[
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                inactiveCardColor: inactiveCardColor,
                child: ValueCard("weight", 60, key: UniqueKey()),
              ),
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                inactiveCardColor: inactiveCardColor,
                child: ValueCard(
                  "Age",
                  18,
                  key: UniqueKey(),
                ),
              )
            ],
          )),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ResultsPage(),
              ),
            ),
            child: Container(
              color: footerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: const Center(
                child: Text("CALCULATE"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
