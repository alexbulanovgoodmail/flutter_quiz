import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';

class ScreenResults extends StatelessWidget {
  const ScreenResults({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData;
    final int totalQuestions = questions.length;
    final int correctAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: <Widget>[
        Text(
          'Вы правильно ответили на  $correctAnswers из $totalQuestions вопросов',
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
        QuestionsSummary(summary: summaryData),
        const SizedBox(height: 24.0),
        TextButton(
          onPressed: onRestart,
          child: const Text(
            'Начать заново',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
