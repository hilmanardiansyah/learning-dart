class Simple {
  final String name;
  int? id;

  Simple({required this.name, this.id});

  void setId(int id) {
    this.id = id;
  }

  void throwException() {
    throw Exception('This is an exception');
  }

  void printName() {
    if (id != null) {
      print('Name is $name with id: $id');
    } else {
      print('Name is $name');
    }
  }
}
