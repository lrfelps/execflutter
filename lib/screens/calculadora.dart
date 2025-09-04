import 'package:flutter/material.dart';
import 'package:exec/components/tela.dart';
import 'package:exec/components/teclado.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraHomePageState();
}

class _CalculadoraHomePageState extends State<Calculadora> {
  String _output = "0";
  String _outputHistory = "";
  double _num1 = 0;
  double _num2 = 0;
  String _operator = "";
  bool _isNewNumber = true;

  void _onButtonPressed(String buttonText) {
    if (buttonText == "AC") {
      _clear();
      return;
    }
    if (buttonText == "=") {
      _calculate();
      return;
    }
    if (buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "÷") {
      _setOperator(buttonText);
      return;
    }

    _appendNumber(buttonText);
  }

  void _clear() {
    setState(() {
      _output = "0";
      _outputHistory = "";
      _num1 = 0;
      _num2 = 0;
      _operator = "";
      _isNewNumber = true;
    });
  }

  void _setOperator(String op) {
    if (_operator.isNotEmpty && !_isNewNumber) {
      _calculate();
    }
    _operator = op;
    _num1 = double.parse(_output);
    _outputHistory = "$_num1 $_operator";
    _isNewNumber = true;
    setState(() {});
  }

  void _appendNumber(String number) {
    if (_isNewNumber) {
      if (number == ".") {
        _output = "0.";
      } else {
        _output = number;
      }
      _isNewNumber = false;
    } else {
      if (number == "." && _output.contains(".")) {
        return;
      }
      _output = _output + number;
    }
    setState(() {});
  }

  void _calculate() {
    if (_operator.isEmpty || _isNewNumber) {
      return;
    }
    _num2 = double.parse(_output);
    double result = 0;

    switch (_operator) {
      case "+":
        result = _num1 + _num2;
        break;
      case "-":
        result = _num1 - _num2;
        break;
      case "x":
        result = _num1 * _num2;
        break;
      case "÷":
        if (_num2 != 0) {
          result = _num1 / _num2;
        } else {
          _output = "Não é possível dividir por zero!";
          _outputHistory = "";
          _operator = "";
          _isNewNumber = true;
          setState(() {});
          return;
        }
        break;
    }

    _outputHistory = "$_num1 $_operator $_num2";
    _output = result.toString();
    _operator = "";
    _isNewNumber = true;
    _num1 = result;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora!'),
      ),
      body: Column(
        children: <Widget>[
          Display(value: _output, history: _outputHistory),
          const Divider(height: 1, color: Colors.black),
          Keypad(onButtonPressed: _onButtonPressed),
        ],
      ),
    );
  }
}