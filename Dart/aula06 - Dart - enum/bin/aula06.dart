enum UserType { 
  admin,
  customer, 
  employer, 
  driver 
}

void main() {
  final userType = UserType.customer;
  print(userType.name);

  switch(userType){
    case UserType.admin:
    {
      print("É a pessoa que administra");
    }
    break;
    case UserType.customer:
    {
      print("é um cliente");
    }
    break;
    case UserType.employer:
    {
      print("É um(a) funcionário(a)");
      
    }
    break;
    case UserType.driver:
    {
      print("É um(a) motorista");
    }
    break;
    default:
    {
      print("Erro");
    }
  }

}
