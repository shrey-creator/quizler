import 'question.dart';
import 'dart:math';

class QuestionBank {
  int _questionNumber = 0;
  List<int> _passedNumber = [Random().nextInt(13)];
  List<Question> _questionBank = [
    Question('Delhi is the capital of India', true),
    Question('2 + 2 = 5', false),
    Question('Narendra Modi is the president of India', false),
    Question('Corona virus started from china', true),
    Question('Fish can not blink', true),
    Question(
        'Nepal is the only country in the world which does not have a rectangular flag',
        true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question('2 * 2 = 4', true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('Donald Trump is the president of america', true),
    Question('Google was originally called \"Backrub\".', true),
    Question('a heptagon has eight sides', false),
    Question('Shrey\'s mother is fat', false),
    Question('Shrey\'s father is fat', false),
    Question('Shrey loves anime', true),
    Question('The letter H is between letters G and J on a keyboard', true),
    Question(
        'If you add the two numbers on the opposite sides of dice together, the answer is always 7',
        true),
    Question('There are four zeros in one hundred thousand', false),
    Question(
        'The deepest part of the ocean is about 36,200 feet down (11,030 m) which is more like 25 Empire State Buildings',
        true),
    Question('Burj Khalifa is in america', false),
  ];
  String getquestionText() {
    return _questionBank[_passedNumber[_questionNumber]].questionText;
  }

  bool getquestionAnswer() {
    return _questionBank[_passedNumber[_questionNumber]].questionAnswer;
  }

  int questionNo() {
    return _questionNumber;
  }

  int questionBanklength() {
    return _questionBank.length;
  }

  void nextQuestion() {
    int random = Random().nextInt(13);
    ;

    if (_passedNumber.contains(random) == false)
      _passedNumber.add(random);
    else {
      while (true) {
        int random = Random().nextInt(13);
        if (_passedNumber.contains(random) == false) {
          _passedNumber.add(random);
          break;
        }
      }
    }
    _questionNumber++;
  }

  void reset() {
    _passedNumber = [Random().nextInt(13)];
    _questionNumber = 0;
  }
}
