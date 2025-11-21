import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/answer_button.dart';

class ScreenQuestions extends StatefulWidget {
  const ScreenQuestions(this.handleSelectAnswer, {super.key});

  final void Function(String answer) handleSelectAnswer;

  @override
  State<ScreenQuestions> createState() => _ScreenQuestionsState();
}

class _ScreenQuestionsState extends State<ScreenQuestions> {
  var currentQuestionIndex = 0;

  void handleAnswerQuestion(String selectedAnswers) {
    widget.handleSelectAnswer(selectedAnswers);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          currentQuestion.text,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: .5,
            ),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 56.0),
        ...currentQuestion.getShuffledAnswers.asMap().entries.map((entry) {
          final index = entry.key;
          final answer = entry.value;
          final isLast = index == currentQuestion.answers.length - 1;

          return Padding(
            padding: EdgeInsets.only(bottom: isLast ? 0 : 12.0),
            child: AnswerButton(
              label: answer,
              callback: () {
                handleAnswerQuestion(answer);
              },
            ),
          );
        }),
      ],
    );
  }
}
