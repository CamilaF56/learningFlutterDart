
void main(){
  // Formas de inicializar
  List list = [ // dynamic
  1,
  "A",
  {"key": "value"}
  ]; 
  print(list);

  List<int> twoList;
  twoList = [0, 12, 89, 78]; 
  print(twoList);

  var listA = <String>["Hello", "Hi"];
  print(listA);
  var listB = List.empty();
  print(listB);

  // Adicionando itens em um lista -> .add(item)
  listA.add("Bye");
  print(listA);
  twoList.add(90);
  print(twoList);

  // Contatenar 2 listas ou mais de um item (merge de listas)
  listA.addAll(["Goodbye", "Goodmorning"]);
  print(listA);
  var listC = [78, 92];
  twoList.addAll(listC);
  print(twoList);

  // Remover itens de uma lista -> .remove() remove a primeira ocorrencia desse item
  twoList.remove(89);
  print(twoList); 

  // Remover pelo indice -> .removeAt()
  twoList.removeAt(2);
  print(twoList);

  // Limpar a lista -> .clear()
  listC.clear();
  print(listC);

  // .contains() -> ser se o objeto está no array
  print(twoList.contains(92));
  print(twoList.contains("Camila"));

  // .elementAt -> ver o objeto a partir do index no array
  var users = <String>["Camila", "Gabriel", "Tofu"];
  final item = users.elementAt(2);
  print(item);
  final twoItem = users[0];
  print(twoItem);

  // .firstWhere -> pegar a primeira ocorrencia baseada na condição pedida 
  print(users.firstWhere((e) => e.contains("Fontes"), orElse: () => "Vazio")); // pedindo a primeira ocorrencia de Fontes, como n tem retorna "Vazio" 

  // tomando decisão com cada item do array com forEach
  users.forEach((e){
    print("Aluno: $e");
  });

  var salarioAnual = <int>[1000, 5000, 4000, 6000, 7000, 10000];
  var totalSalarios = 0;

  salarioAnual.forEach((element) { 
    totalSalarios += element;
  });
  print(totalSalarios);

  // .indexOf -> identificar o index do elemento
  print(salarioAnual.indexOf(5000));

  // .indexWhere -> identificar o index do elemento basedao em uma condição bool
  print(salarioAnual.indexWhere((element) => element==7000)); // pegando o index do valor 7000

  // .insert -> inclui o elemento baseado na posição que você deseja
  salarioAnual.insert(4, 8000); 
  print(salarioAnual);

  // .insertAll -> insere uma lista na outra baseado na posição
  final _list = <int>[1, 2, 3];
  print(_list);
  _list.insertAll(1, salarioAnual);
  print(_list);

  // .reduce() 
  double media = salarioAnual.reduce((value, element) => value+element) / salarioAnual.length;
  print(media);
  int media2 = media.toInt();
  print(media2);
  print(media.toInt());
}
