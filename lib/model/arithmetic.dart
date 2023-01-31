class Arithmetic {
  int? first;
  int? second;

  Arithmetic({this.first, this.second});

  int? add() {
    return first! + second!;
  }

  int? subtract() {
    return first! - second!;
  }

  int? multiply() {
    return first! * second!;
  }

  int? divide() {
    return first! ~/ second!;
  }
}
