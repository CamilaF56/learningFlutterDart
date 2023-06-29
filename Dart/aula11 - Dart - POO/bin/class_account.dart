class AccountBank {
  String id; // atributos
  String cpf;
  int value = 1000; // simulando valor já vindo da API

  AccountBank({required this.id, required this.cpf}); // construtor

  // metódo para pagamentos
  void paymentTo(int value) {
    this.value = this.value - value; // meu valor atual menos o valor que to pegando para o pagamento
    print("Pagamento efetuado com sucesso");
  }

  @override
  String toString() => "Your Account Informations: id: $id, cpf: $cpf, value: $value";
}