import 'dart:convert';
import 'dart:io';

import 'package:teste/teste.dart' as teste;

void main(List<String> arguments) {

  print("Digite a sua primeira nota: ");
  var line1 = stdin.readLineSync(encoding: utf8);
  var prova1 = double.parse(line1==null ? "0" : line1); // Forma amais detalhada

  print("Digite a sua segunda nota: ");
  line1 = stdin.readLineSync(encoding: utf8);
  var prova2 = double.parse(line1 ?? "0"); // Mesma coisa do de cima

  double media = (prova1+prova2)/2;

  print('A média é $media');

  if(media >= 7){
    print("Aprovado com a média: $media");
  }else{
    print("Reprovado com a média: " + media.toString());
  }

  media >= 7 ? print("hmmm") : print("eita"); // Ternário

  

}
