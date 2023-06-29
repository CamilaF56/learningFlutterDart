class Product{
  final String name;
  final double value;
  final String description;

  Product({required this.name, required this.value, required this.description});

  @override
  String toString() => "Product Informations: Nome: $name, Valor: $value, Descrição: $description";
}

void main(){
  final productOne = Product(name: "Batata", value: 0.89, description: "Batata Inglesa, plantanda pela fazenda \"Nossa Fazenda\"");
  print(productOne);
}