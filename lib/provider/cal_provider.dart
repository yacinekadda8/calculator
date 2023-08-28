import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();
  //final res = TextEditingController();

  setValue(String value) {
    String str = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += value;
    }
    // make cursor move with numbers lenght
    compController.selection = TextSelection.fromPosition(
        TextPosition(offset: compController.text.length));
  }

  void compute() {
    String text = compController.text;
    num result = text.interpret();
    String formattedResult =
        result.toStringAsFixed(result.truncateToDouble() == result ? 0 : 2);
    compController.text = formattedResult;
    //res.text = formattedResult;
    //compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
