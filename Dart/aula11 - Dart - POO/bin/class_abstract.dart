abstract class Payment {
  String get cpf;
  int get value;

  void insertCPF();
  void insertValue();
}

class MoneyPayment implements Payment{
  late final String _cpf;
  late final int _value;

  MoneyPayment({
    required String cpf,
    required int value,  
  }) {
    _cpf = cpf;
    _value = value;
  }

  @override
  String get cpf => _cpf;

  @override
  void insertCPF() {
    _value = value;
  }

  @override
  void insertValue() {
    _cpf = cpf;
  }

  @override
  int get value => _value;
}


