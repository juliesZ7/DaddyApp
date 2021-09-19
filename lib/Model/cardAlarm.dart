class CardAlarm {
  String name;
  DateTime time;
  String property;
  bool switchCase;
  CardAlarm(
      {required this.name,
      required this.property,
      required this.switchCase,
      required this.time});
}

List<CardAlarm> listOfAlarm = [
  CardAlarm(
      name: 'Hello',
      property: 'Tất cả các ngày',
      switchCase: false,
      time: DateTime.now()),
  CardAlarm(
      name: 'Hi',
      property: 'Tất cả các ngày',
      switchCase: false,
      time: DateTime.now()),
];
