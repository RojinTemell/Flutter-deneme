void main() {
  // Normal şartlarda biz extends anahtar kelimesi ile ilişkili olan
  // sınıfa üst sınıftan miras alıyorduk ve bu yalnızca birtane olabiliyordu.
  //interface yapısında ise istediğimiz kadar farklı sınıflardan implements anahtar kelimesi
  // ve sınıflar aralarına virgül koyarak alabiliyoruz
  //Biz aralarında bir ilişki olmayan sınıflar da oluşturup miras almalarını sağlayabiliriz
}

abstract class IStudent {
  final String name;
  final int age;
  int? schoolId;
  void saySomething() {
    print(age);
  }

  IStudent(this.age, this.name);
}

class Student implements IStudent {
  final String name;
  final int age;
  int? schoolId;
  Student(this.age, this.name);

  void saySomething() {
    // ignore: todo
    // TODO: implement saySomething
  }
}

class Student2 implements IStudent {
  final String name;
  final int age;
  int? schoolId;
  Student2(this.age, this.name);

  void saySomething() {
    // ignore: todo
    // TODO: implement saySomething
  }
}
