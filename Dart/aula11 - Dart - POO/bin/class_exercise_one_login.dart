class Login{
  final String email;
  final String password;

  Login({required this.email, required this.password});

  @override
  String toString() => "User Informations: email: $email, password: $password";
}

void main(){
  final user1 = Login(email: "camilafontes@gmail.com", password: "password");
  print(user1);
}