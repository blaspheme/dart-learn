class P {
  late String name;
  late int age;

  P(this.name, this.age);

  P.init(String dataName, int dataAge) {
    name = dataName;
    age = dataAge;
  }

  bool isOld() {
    return age > 30 ? true : false;
  }
}

class PP {
  String name;
  static Map<String, dynamic> _cache = {};

  factory PP(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = PP._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  PP._internal(this.name);
}

// This is where the app starts executing.
void main() {
  var p = P('tom', 12);
  print(p.name);
  var p2 = P.init('tom2', 123);
  print(p2.name);

  final pp = PP('TOOOO');
  print(pp.name);
}
