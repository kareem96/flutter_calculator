import 'dart:math';

import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  var input = "";
  var output = "";

  equalPressed() {
    String uInput = input;
    uInput = uInput.replaceAll("x", "*");
    Parser parser = Parser();
    Expression expression = parser.parse(uInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    output = eval.toString();
    update();
  }

  clearIO() {
    input = "";
    output = "";
    update();
  }

  deleteBtnAction() {
    input = input.substring(0, input.length - 1);
    update();
  }

  onButtonTapped(List<String> buttons, int index) {
    input += buttons[index];
    update();
  }
}
