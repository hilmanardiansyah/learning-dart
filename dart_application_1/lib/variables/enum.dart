enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  print('Today is : ${Day.monday}');
  print('Is Weekend? ${Day.saturday.index >= 5}');
}
