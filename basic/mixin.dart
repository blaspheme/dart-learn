mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Maestro with Musical {
  late String name;
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

void main() {
  var p = Maestro('tom');
  p.entertainMe();
}
