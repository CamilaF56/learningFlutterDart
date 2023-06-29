import 'class_account.dart';
void main() {
  final account = AccountBank(id: "id0-123uddh312fas3", cpf: "123.123.123-12"); // instanciando

  account.paymentTo(10);
  print(account.value); // printar valor atual da conta
  print(account);
}
