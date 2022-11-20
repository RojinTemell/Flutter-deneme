void main() {
  //dikkat edilmesi  gereken husus bir child sınıfın sadece bir tane üst parent sınıfı olabiliyordu.
  // yani abstract sınıfı extends ettiğimiz kısım
  final userNormal = User('ROJİN', 300);
  final userBank = BankUser('SALİH', 600, 1245);
  final userSpecial = SpecialUser('hamdulllah', 5607, 3456, 30);
  print(userBank);
  print(userSpecial);
  print(userNormal);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();
  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('$name , $money paranız bulunmaktadır');
  }
}

class User extends IUser {
  // abstract sınıfın name ve money i bilmesi için extends etmem lazım
  //final String name;
  //final int money;

  // tabiki constructor da this.name i string name olarak bu parametreleri değiştirmeliyiz
  User(String name, int money)
      : super(name, money); // extends ettiği için taşıdığı şeyleri belirmeli

  //void sayMoneyWithCompanyName(){
  // print('$name kullanıcımız $money paranız bulunmaktadır');
  //}
  //BU FONK. HER CLASSTA YAPMAMIZ LAZIM BU DA TEKRARLANAN KOD ANLAMINA GELİYOR BUNUN YERİNE **ABSTRACT CLASS** KULLANABİLİRİZ.
}

class BankUser extends IUser {
  //late final String name;
  //late int  money;
  // zaten extends ettiğimiz class ta olduğu için yazmamıza gerek kalmadı
  late final int bankCode;

  BankUser(String name, int money, int bankCode) : super(name, money) {
    this.bankCode = bankCode;
  }
}

class SpecialUser extends IUser {
  //final String name;
  //final int money;
  final int bankCode;
  late final double _discount;

  SpecialUser(String name, int money, this.bankCode, double discount)
      : super(name, money) {
    _discount = discount / 100;
  }

  //indirimli fiyatın ne kadar
  double get calculateMoney => money - (money * _discount);
}
