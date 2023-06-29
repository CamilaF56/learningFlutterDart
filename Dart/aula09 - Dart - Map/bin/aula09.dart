
void main(){
  // Acesso a partir de chaves
  // map -> sempre tem uma chave com um valor
  // {
  // key: value
  // }

  // chave -> CPF, RG

  final map = <String, dynamic>{ // o dynamic é para o entries 
    "cpf": "123.245.675-12",
    "rg": "123.123-34"
  };

  print(map["cpf"]);

  // .addAll
  final map2 = Map<String, dynamic>();
  map2.addAll({
    "name": "Camila",
    "phones": ["3456","343325"]  
  });
  print(map2["name"]);
  print(map2["phones"]);

  // .addEntries -> merge de maps
  map.addEntries(map2.entries);
  print(map);

  // .clear() -> limpar o map
  map.clear();
  print(map);

  // verificar se existe a chave ou valor no map
  print(map2.containsKey("phones"));
  print(map2.containsKey("fullNames"));
  print(map2.containsValue("Camila"));

  // .remove -> remover item no map
  map2.remove("name");
  print(map2);

  // .removeWhere -> remover com condição
  map2.removeWhere((key, value) => value.toString().contains("5"));
  print(map2);

  // .update -> atualizar os dados da map
  final mapA = <String, dynamic>{"names": ["Camila", "Fernando"], "lastName": ["Fernandes", "Carvalho"]};
  mapA.update("names", (value) => "Kailane");
  print(mapA);
  mapA["names"] = "Camila";
  print(mapA);

  // .updateAll -> atualizando todos os valores do map
  mapA.updateAll((key, value) => key == "names" ? ["hello", "Camila"] : value);
  print(mapA);
  mapA.updateAll((key, value) => "#");
  print(mapA);
}
