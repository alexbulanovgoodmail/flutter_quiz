import 'package:flutter/material.dart';
import 'package:flutter_quiz/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summary});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Column(children: summary.map((data) => SummaryItem(data)).toList());
  }
}
