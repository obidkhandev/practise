import 'package:flutter/foundation.dart';
import '../buttons.dart';

class CalculateViewModel extends ChangeNotifier {
  String numberOne = '';
  String numberTwo = '';
  String operand = '';

  void onTapButton(String btn) {
    if (btn == Btn.del) {
      delete();
      return;
    }
    if (btn == Btn.per) {
      convertToPercent();
      return;
    }
    if (btn == Btn.clr) {
      clearAll();
      return;
    }
    if (btn == Btn.calculate) {
      calculate();
      return;
    }
    appendsValue(btn);
  }

  void appendsValue(String value) {
    if (value != Btn.dot && int.tryParse(value) == null) {
      if (operand.isNotEmpty && numberTwo.isNotEmpty) {
        calculate();
      }
      operand = value;
    }
      else if(numberOne.isEmpty || operand.isEmpty){
      if (value == Btn.dot && numberOne.contains(Btn.dot)) return;
      if (value == Btn.dot && numberOne.isEmpty || numberOne == Btn.n0) {
        value = '0.';
      }
      numberOne += value;

    }else if(numberTwo.isEmpty || operand.isNotEmpty){
      if (value == Btn.dot && numberTwo.contains(Btn.dot)) return;
      if (value == Btn.dot && numberTwo.isEmpty || numberTwo == Btn.n0) {
        value = '0.';
      }
      numberTwo += value;
    }
    notifyListeners();
  }

  void calculate() {
    if (numberOne.isEmpty || numberTwo.isEmpty || operand.isEmpty) return;
    final double num1 = double.parse(numberOne);
    final double num2 = double.parse(numberTwo);
    var result = 0.0;
    switch (operand) {
      case Btn.add:
        result = num1 + num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.divide:
        if (num2 == 0) {
          numberOne = 'Error';
          numberTwo = '';
          operand = '';
          notifyListeners();
          return;
        }
        result = num1 / num2;
        break;
      case Btn.multiply:
        result = num1 * num2;
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

  void clearAll() {
    numberOne = '';
    numberTwo = '';
    operand = '';
    notifyListeners();
  }

  void convertToPercent() {
    if (numberOne.isNotEmpty && operand.isEmpty && numberTwo.isEmpty) {
      final number = double.parse(numberOne);
      numberOne = "${number * 0.01}";
      notifyListeners();
    }
  }

  void delete() {
    if (numberTwo.isNotEmpty) {
      numberTwo = numberTwo.substring(0, numberTwo.length - 1);
    } else if (operand.isNotEmpty) {
      operand = '';
    } else if (numberOne.isNotEmpty) {
      numberOne = numberOne.substring(0, numberOne.length - 1);
    }
    notifyListeners();
  }
}
