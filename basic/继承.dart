class P {
  num name;
  num age;

  P(this.name, this.age);

  bool childCheck() {
    return age > 20 ? true : false;
  }
}

class Q extends P {
  Q(num name, num age) : super(name, age);

  bool check() {
    return super.childCheck();
  }
}

void main() {
  final a = Q(12, 13);
  print(a.check()); // false
}
