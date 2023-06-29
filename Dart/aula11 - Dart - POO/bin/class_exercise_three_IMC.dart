class IMC{
  final double altura;
  final double peso;

  IMC({required this.altura, required this.peso});

  double calculo(){
    return peso / (altura*altura);
  }
}

void main(){
  final result = IMC(altura: 1.78, peso: 75.12);
  print(result.calculo());
}