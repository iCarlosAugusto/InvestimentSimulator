class ExamController {
  var teste = 'Veio do controller';
  Map<String, Object>? currentQuestion;
  int currentQuestionIndex = 0;

  List exam = [
    {
      'id': 1,
      'question': '1 + 1 = ?',
    },
    {'id': 2, 'question': 'Quem descobriu o Brasil?'},
    {'id': 3, 'question': 'Quem descobriu o ouro?'}
  ];

  ExamController() {
    initExam();
  }

  initExam() {
    currentQuestion = exam[currentQuestionIndex];
  }

  goToNextQuestion() {
    currentQuestionIndex++;
    currentQuestion = exam[currentQuestionIndex];
    print(currentQuestion);
  }
}
