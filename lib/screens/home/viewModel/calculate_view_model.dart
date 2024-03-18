import 'package:flutter/foundation.dart';
import '../buttons.dart';

class CalculateViewModel extends ChangeNotifier{
  String numberOne = '';
  String numberTwo = '';
  String operand = '';

  void onTapButton(String btn){
    if(btn == Btn.del){
      delete();
    }
    if(btn == Btn.per){
      convertToPercent();
    }
    if(btn == Btn.clr){
      clearAll();
    }
    if(btn == Btn.calculate){
      calculate();
    }
    appendsValue(btn);
  }

  void appendsValue(String value){
    if(value != Btn.dot && int.tryParse(value) != null ){
      if(operand.isNotEmpty && numberTwo.isNotEmpty){
        calculate();
      }
      operand = value;
    }
    else if(numberOne.isNotEmpty && operand.isNotEmpty){
      if(value == Btn.dot && numberOne.contains(Btn.dot)) return;
      if(value == Btn.dot && numberOne.isEmpty || value == Btn.n0){
        value = '0.';
      }
    }
    numberTwo += value;
    notifyListeners();
  }

  void calculate(){
    if(numberOne.isNotEmpty && numberTwo.isNotEmpty && operand.isNotEmpty) {
      final double num1 = double.parse(numberOne);
      final double num2 = double.parse(numberTwo);
      var result = 0.0;
      switch(operand){
        case Btn.add:
          result = num1+num2;
          break;
        case Btn.subtract:
          result = num1-num2;
          break;
        case Btn.divide:
          result = num1-num2;
          break;
        case Btn.multpley:
          result = num1*num2;
          break;
        default:
      }
      numberOne = '$result';
      if (numberOne.endsWith('.0')) {
        numberOne = numberOne.substring(0, numberOne.length - 2);
      }
      operand = '';
      numberTwo = '';
      notifyListeners();
    }
  }

  void clearAll (){
    numberOne = '';
    numberTwo = '';
    operand = '';
    notifyListeners();
  }

  void convertToPercent(){
    if(numberOne.isNotEmpty && operand.isNotEmpty && numberTwo.isNotEmpty){
      calculate();
    }
    if(operand.isNotEmpty){
      return;
    }
    final number = double.parse(numberOne);
    numberOne = "${number / 100}";
    operand = '';
    numberTwo = '';
    notifyListeners();
  }

  void delete(){
    if(numberTwo.isNotEmpty){
      numberTwo = numberTwo.substring(0,numberOne.length - 1);
    }else if(numberOne.isNotEmpty){
      numberOne = numberOne.substring(0,numberTwo.length - 1);
    }else if(operand.isNotEmpty){
      operand = '';
    }
    notifyListeners();
  }
}



