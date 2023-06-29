
void main(List<String> arguments) {
  final duration = Duration(days: 100);
  print(duration.inHours);

  const firstHalf = Duration(minutes: 45);
  const secondHalf = Duration(minutes: 45);
  const overTime = Duration(minutes: 30);
  final maxGameTime = firstHalf + secondHalf + overTime;
  print(maxGameTime.inMinutes); // 120 minutes


  var result = firstHalf.compareTo(secondHalf);
  print(result); // = 0, pois firstHalf(45) == secondHalf(45)

  result = overTime.compareTo(firstHalf);
  print(result); // < 0, pois overTime(30) < firstHalf(45)

  result = secondHalf.compareTo(overTime);
  print(result); // > 0, pois secondHalf(45) > overTime(30)

}
