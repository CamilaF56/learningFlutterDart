late int numbers;
late double doubleTwoTest; 

void main(List<String> arguments) {
  numbers = 2;
  numbers += 5;
  numbers++;

  var numberText = "4";
  var numberParsed = int.tryParse(numberText) ?? 0; // usar sempre tryParse para casting
  print(numberParsed + numbers);

  late int division;
  numbers++;
  division = numbers ~/ numberParsed; // trunca para numero inteiro
  print(division);

  var dynamicTeste; // declaração dinâmica
  dynamicTeste = 5;
  print(dynamicTeste);
  dynamicTeste = 5.5;
  print(dynamicTeste);

  var doubleTest = 5.8;
  doubleTwoTest = 3.0;
  print(doubleTwoTest+doubleTest);
}
