void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = Eng();

  user.sayName();

  // yazılım hep if else olursa karmaşık olur
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'veli';

  @override
  void sayName() {
    print('merhaba $name');
  }
}

class Eng implements IUser {
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('welcome  $name');
  }
}
