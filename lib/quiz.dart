import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screens/screen_start.dart';
import 'package:flutter_quiz/screens/screen_questions.dart';
import 'package:flutter_quiz/screens/screen_results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'screen-start';

  void switchScreen() {
    setState(() {
      activeScreen = 'screen-questions';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'screen-questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget;
    if (activeScreen == 'screen-start') {
      screenWidget = ScreenStart(switchScreen);
    } else if (activeScreen == 'screen-questions') {
      screenWidget = ScreenQuestions(chooseAnswer);
    } else {
      screenWidget = ScreenResults(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 60.0,
            ),
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
