import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import "app_card.dart";
import 'gender_card.dart';

const Color containerColor = Color(0xFF1D1E33);
const Color footerColor = Color(0xFFEB1555);
const Color inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
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
                    text: "Male"),
              ),
              AppCard(
                inactiveCardColor: inactiveCardColor,
                key: UniqueKey(),
                color: containerColor,
                child: GenderCard(
                  key: UniqueKey(),
                  text: "female",
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
                child: null,
                inactiveCardColor: inactiveCardColor,
              )
            ],
          )),
          Expanded(
              child: Row(
            children: <AppCard>[
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                child: null,
                inactiveCardColor: inactiveCardColor,
              ),
              AppCard(
                key: UniqueKey(),
                color: containerColor,
                child: null,
                inactiveCardColor: inactiveCardColor,
              )
            ],
          )),
          Container(
            color: footerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
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
