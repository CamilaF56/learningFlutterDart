
void main() async{
  print("Chamou a função");
  functionAsync();
  print("Processando a função");

  print("Chamou a função");
  await functionAsync();
  print("Processando a função");

  print(fatorial(5));

  callbackFunction(() => print("Passando o print para a outra função"));
  callbackFunction2((value) => print(value));
}

// async functions -> conexões, consultas na Banco de Dados
Future<void> functionAsync() async{
  print("Chamou API");
  await Future.delayed(Duration(seconds: 5)); // await na frente significa: espere a função acontecer
  print("API respondeu com sucesso");
} 

// função recursiva
fatorial(int n){
  if(n==0){
    return 1;
  }

  return n * fatorial(n-1);
}

// callbaks functions -> usados em gerencia de estados // função passando no widget
void callbackFunction(Function() onChange){ // criando um função no argumento de outra
  onChange();
}

void callbackFunction2(Function(String value) beChange){
  beChange("Passando o print para a outra função");
}