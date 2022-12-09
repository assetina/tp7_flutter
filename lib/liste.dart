

import 'test.dart';

class Liste {
  int _questionNumber = 0;

  final List<Test> _listeQuestion = [
    Test('le togo n a pas encore eu son independance.', false),
    Test('Dadis camara est jeune.', false),
    Test('chris brown a pris sa retraite.', true),
        
  ];

  void questionSuivante() {
    if (_questionNumber < _listeQuestion.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _listeQuestion[_questionNumber].question;
  }

  bool getReponse() {
    return _listeQuestion[_questionNumber].reponse;
  }

  bool isFinished() {
    if (_questionNumber >= _listeQuestion.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
