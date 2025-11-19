import 'package:flutter_quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Из чего состоят интерфейсы во Flutter?',
    [
      'Виджеты',
      'Компоненты',
      'Блоки',
      'Функции',
    ],
  ),
  QuizQuestion(
    'Как создаются интерфейсы во Flutter?',
    [
      'Путём объединения виджетов в коде',
      'Путём объединения виджетов в визуальном редакторе',
      'Определением виджетов в конфигурационных файлах',
      'С помощью XCode для iOS и Android Studio для Android',
    ],
  ),
  QuizQuestion(
    'Какова цель StatefulWidget?',
    [
      'Обновлять UI при изменении данных',
      'Обновлять данные при изменении UI',
      'Игнорировать изменения данных',
      'Отображать UI, не зависящий от данных',
    ],
  ),
  QuizQuestion(
    'Какой виджет рекомендуется использовать чаще: StatelessWidget или StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Оба одинаково хороши',
      'Ни один из вышеперечисленных',
    ],
  ),
  QuizQuestion(
    'Что произойдёт, если изменить данные в StatelessWidget?',
    [
      'UI не будет обновлён',
      'UI будет обновлён',
      'Обновится ближайший StatefulWidget',
      'Обновятся вложенные StatefulWidgets',
    ],
  ),
  QuizQuestion(
    'Как правильно обновлять данные в StatefulWidget?',
    [
      'С помощью setState()',
      'С помощью updateData()',
      'С помощью updateUI()',
      'С помощью updateState()',
    ],
  ),
];
