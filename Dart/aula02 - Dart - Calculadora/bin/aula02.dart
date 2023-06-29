import 'dart:convert';
import 'dart:io';
import 'package:aula02/aula02.dart' as aula02;

void main(List<String> arguments) {
  print("BEM-VINDO A CALCULADORA - SOMA - SUBTRAÇÃO - MULTIPLICAÇÃO - DIVISÃO");

  print("Digite o primeiro número: ");
  var line = stdin.readLineSync(encoding: utf8);
  var n1 = double.parse(line ?? "0");

  print("Digite o segundo número: ");
  line = stdin.readLineSync(encoding: utf8);
  var n2 = double.parse(line ?? "0");

  print("Digite a operação: ");
  print("+ <-> Soma");
  print("- <-> Subtração");
  print("* <-> Multiplicação");
  print("/ <-> Divisão");

  var op = stdin.readLineSync(encoding: utf8);
  var resultado = 0.0;

  switch (op) {
    case '+':
      resultado = n1 + n2;
      break;
    case '-':
      resultado = n1 - n2;
      break;
    case '*':
      resultado = n1 * n2;
      break;
    case '/':
      resultado = n1 / n2;
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }
  print("Operação Solicitada: $op");
  print("O resultado é de $resultado");
}
