void main() {
  var a = "Camila Dev";

  // 1- substring -> corta a String pelos índices de posições do "vetor" da própria String
  var b = a.substring(6, 10);
  print(b);

  // 2- split -> transformar uma String em um array
  var c = "Flutter Dart Teste";
  var d = c.split("Teste");
  print(d[0]); // pegando o indice [0] tirando o que foi pasasndo no pattern -> ("Teste")
  d = c.split(" ");
  print("${d[0]} ${d[1]}"); // pegando a primeira palavra e juntando com a segunda -> quebrando pelo pattern de espaço 
  
  // 3- length -> tamanho da String
  var myString = "Camila Fontes";
  print(myString.length);

  for (var i = 0; i < myString.length; i++) {
    print(myString[i]);
  }

  // 4- isEmpty -> está vazio? / isNotEmpty -> não está vazia?
  final text = "";
  print(text.isEmpty);

  // 5- contains  -> verificar se tem uma palavra em um tetxo ou algo maior / obs SENSITIVECASE
  final twoText = "lorem aksdadasdashdjas Vitin é falso demais, socorro!";
  print(twoText.contains("Vitin"));

  // 6- replaceAll -> troca em todos os lugares
  final value = "R\$ 10,00";
  final parse = value.replaceAll("R\$", "").replaceAll(",", ".");
  final number = double.parse(parse);
  print(number + 1);

  // 7- replaceFirst -> troca na primeira aocorrência
  final testReplace = "meu algoritmo está funcionando";
  print(testReplace.replaceFirst("meu", "batata"));

  // 8- replaceRange -> substituição de String a partir da posição tal até outra posição 
  final testReplaceRange = "meu algoritmo está funcionando";
  print(testReplaceRange.replaceRange(4, 13, "elementar"));

  // 9- startsWith -> se a String começa com tal pattern
  final textStartsWith = "Camila Fontes";
  print(textStartsWith.startsWith("Camila"));
  print(textStartsWith.startsWith("Fontes"));

  // 10- endsWith -> se a String termina com a pattern
  final textEndsWith = "meu algoritmo está funcionando";
  print(textEndsWith.endsWith("Camila"));
  print(textEndsWith.endsWith("o"));

  // 11- trim -> remove os espaços vazios no começo e fim da String
  final textTrim = "  meu algoritmo está funcionando   ";
  print(textTrim.trim());
  print(textTrim.trimLeft());
  print(textTrim.trimRight());
}
