import 'package:flutter/cupertino.dart';

class BmiCalculator extends ChangeNotifier {

  double _heightScale = 0;
  double _weightScale = 0;
  int _age =0;
  double _bmiAnswer = 0;
  String _resultCategory  ='';
  double _inches = 0;
  bool  _isMalePressed = false;
  bool _isFemalePressed = false;
  double _feetValue = 0;


  double get feetValue => _feetValue;



  bool get isMalePressed => _isMalePressed;

  set isMalePressed(bool value) {
    _isMalePressed = value;
  }

  bool get isFemalePressed => _isFemalePressed;

  set isFemalePressed(bool value) {
    _isFemalePressed = value;
  }

 checkIsPressedMale(){
    isFemalePressed=false;
    isMalePressed = true;
    notifyListeners();
}

 checkIsPressedFemale()
{
  isFemalePressed=true;
  isMalePressed = false;
  notifyListeners();
}
  double get getinches => _inches; //GET RESULT VERDICT OF WEIGHT
  String get resultCategory => _resultCategory;

  // SET THE WEIGHT MEASUREMENT
  set heightScale(double value) {
    _heightScale = value;
    _inches = _heightScale*39.36;
    _feetValue = _heightScale * 3.28084;
    notifyListeners();
  }

  //GET THE WEIGHT MEASUREMENT
  getHeighDigit() {
    return _heightScale;
  }

  // SET THE WEIGHT MEASUREMENT
  set weighttScale(double value) {
    _weightScale = value;
    notifyListeners();
  }

  //GET THE WEIGHT MEASUREMENT
  getWeightDigit() {
    return _weightScale;
  }

  // SET THE Age MEASUREMENT
  set setAge(int value) {
    _age = value;
    notifyListeners();
  }

  //GET THE AGE MEASUREMENT
  getAgeDigit() {
    return _age;
  }

  //GET BMI ANSWER
  getBmiAnswer() {
    return _bmiAnswer;
  }

  void reset()
  {
    _heightScale =0;
    _weightScale = 0;
    _age = 0;
    isFemalePressed = false;
    _isMalePressed = false;
    _bmiAnswer = 0;
    _inches = 0;
    notifyListeners();

  }

  // METHOD TO ADD DIGIT
  void addDigit () {
    _weightScale = _weightScale + 10;
    getWeightDigit();
    notifyListeners();
  }

  // METHOD TO REMOVE DIGIT
  void minusDigit () {
    if ( _weightScale ==0){
    }
    else
      _weightScale = _weightScale - 1;
    getWeightDigit();
    notifyListeners();
  }

  void addAge () {
    _age = _age + 10;
    getAgeDigit();
    notifyListeners();
  }

  // METHOD TO REMOVE DIGIT
  void minusAge () {
    if ( _age ==0){
    }
    else
      _age = _age - 1;
    getAgeDigit();
    notifyListeners();
  }

  calculateBMI(double weight, double height){
    _bmiAnswer = weight/(height*height);

    if (_bmiAnswer < 16.0) {
      _resultCategory = "Severly Underweight";
    } else if(_bmiAnswer < 18.4) {
      _resultCategory = "Underweight";
    } else if(_bmiAnswer < 24.9) {
      _resultCategory = "Normal";
    } else if(_bmiAnswer < 29.9) {
      _resultCategory = "Overweight";
    } else if(_bmiAnswer < 34.9) {
      _resultCategory = "Moderately Obese";
    } else if(_bmiAnswer < 39.9) {
      _resultCategory = "Severly Obese";
    } else {
      _resultCategory = "Morbidly Obese";
    }

  }


}

