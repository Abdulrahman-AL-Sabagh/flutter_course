import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/Question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final Icon correctAnswer = const Icon(
    Icons.check,
    color: Colors.green,
  );

  final Icon wrongAnswer = const Icon(
    Icons.close,
    color: Colors.red,
  );
  List<Icon> scoreKepper = [];

  List<Question> questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('question3: A slug\'s blood is green.', true)
  ];

  int currentQuestion = 0;

  bool finished = false;

  bool isFinished(bool finished) => this.finished = finished;

  void reset() {
    currentQuestion = 0;
    finished = isFinished(false);
  }

  void addIcon(bool answer) =>
      setState(() => scoreKepper.add(questions[currentQuestion].answer != answer
          ? wrongAnswer
          : correctAnswer));

  void nextQuestion(bool answer) {
    addIcon(answer);
    setState(() {
      if (currentQuestion >= questions.length - 1) {
        finished = isFinished(true);
        reset();
        scoreKepper = [];
        Alert(
          context: context,
          title: "The end of the Quiz",
          desc: "Good job hit the button if you want to play again.",
        ).show();
      } else {
        currentQuestion++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[currentQuestion].question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () => nextQuestion(true)
              //The user picked true.
              ,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () => nextQuestion(false),
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(children: scoreKepper)
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
