class TestModel {
  TestModel({required this.question, required this.answer});
  final String question;
  final bool answer;
}

TestModel test1 =
    TestModel(question: 'Кыргызстанда 7 область барбы?', answer: true);

TestModel test2 = TestModel(
    question: 'Flutter жана Dart Microsoft тарабынан иштелип чыкканбы?',
    answer: false);

TestModel test3 = TestModel(question: 'Кааба Мекке шаарындабы?', answer: true);

TestModel test4 =
    TestModel(question: 'Peaksoft House Кара-Кол шаарындыбы?', answer: false);

TestModel test5 = TestModel(question: 'Крокодиль сууда сүзөбү?', answer: true);

List<TestModel> testList = [test1, test2, test3, test4, test5];
