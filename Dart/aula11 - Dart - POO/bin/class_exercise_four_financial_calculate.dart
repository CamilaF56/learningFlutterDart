// CALCULADORA FINANCEIRA
// RECEBER SALARIO NO CONSTRUTOR
// FUNC PRA ADICIONAR DESPESAS -> DESPESA, NOME, DATA E VALOR
// FUNC PRA VER O SALDO ATUAL

class Calculate {
  final double salary;
  final List<Costs> costs = [];

  Calculate({required this.salary});

  void addCosts(Costs cost) {
    costs.add(cost);
  }

  void currentValue() {
    var value = 0.0;
    costs.forEach((element) {
      value += element.valueCost;
    });
    final total = salary - value;
    print("Current Value: R\$$total");
  }

  void extract() {
    print("Input: $salary");
    costs.forEach((element) {
      print(
          "  - Name: ${element.nameCost} | Date: ${element.date} | Value: R\$${element.valueCost}");
    });
    currentValue();
  }
}

class Costs {
  final String nameCost;
  final String date;
  final double valueCost;

  Costs({required this.date, required this.nameCost, required this.valueCost});
}

void main() {
  final mySalary = Calculate(salary: 6000.00);
  mySalary
      .addCosts(Costs(date: "24/09/2002", nameCost: "PS5", valueCost: 5678.98));
  mySalary.addCosts(Costs(
      date: "17/11/2012", nameCost: "Combo do Burguer King", valueCost: 42.70));
  mySalary.currentValue();
  mySalary.extract();
}
