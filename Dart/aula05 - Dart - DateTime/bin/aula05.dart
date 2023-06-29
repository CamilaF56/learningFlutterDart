
void main(List<String> arguments) {
  // YYYY-MM-DD (INTL - pubDev)
  var date = DateTime(2022,2,20);
  print(date);

  // Passar de string para DateTime
  final parseDate = DateTime.parse('1969-07-20 20:18:04Z');
  print(parseDate);

  // Data UTC - computador tarbalha com esse tipo de referencia em datas
  final dateUTC = DateTime.utc(2022, 02, 20);
  print(dateUTC);

  // Data de agora
  final dateNow = DateTime.now();
  print(dateNow);
  print("HOURS: ${dateNow.hour} - MINUTES: ${dateNow.minute} or ${dateNow.hour}:${dateNow.minute} in day ${dateNow.month}/${dateNow.day}");

  // Operações com datas / .subtract -> diminuir / .different -> diferença : em dias, horas, minutos...
  final later = dateNow.add(const Duration(hours: 36)); // adicionando 36 horas a partir de agora
  print(later);

  // Comparações:
  // .isBefore - ver se é antes da data 
  // .isAfter - ver se é depois da data
  // .isAtSameMomentAs - ver se é igual a data
}
