void main() {
  final user = _User('veli', age: 32);

  // musterinin yasi 18 den kucuk kontrolu yaparmisin
  if (user.age is int) {
    // is! boyle bir kalipta var

    if (user.age! < 18) {
      //ünlem koyarak bunun sonucundaki değerin
      //null olmadığına eminim sen ne olursa olsun devam et null gelmeyecek diyoruz
      print('evet');
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }
  //bu asagidaki zaten bildigimiz
  //if ((user.age ?? 0) < 18) {} // ?? i  kontrol yapar ve eger yas null ise 0 kabul et
  final _newType = user.moneyType is String ? user.moneyType as String : "";

  print(_newType + 'a');

  int money1 = 50;
  int money2 = 50;
  if (money1 == money2) {
    print('okey');
  }

  final bank1 = Bank(60, '12');
  final bank2 = Bank(60, '12');

  print(bank1 == bank2);
  // peki neden false çünkü class lar bir referans tipidir
  //bundan dolayı öncelikle değerleri değil referansları karşılaştırırlar

  // aynı sonucu almak için operatör yazmamız lazım

  print(bank1 + bank2);
  // eger + operatorleri tanimlamasaydik  + islemine izin verilmezdi

  print(bank1.Id == bank2.Id);

  bank1.money += 10;
  print(bank1.money);

  //cascade notation

  bank1
    ..money += 15
    ..name = 'temel';
}

class _User {
  // private class
  final String name;

  int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String Id;
  String? name;

  Bank(this.money, this.Id);

  void updateName(String) {
    this.name = name;
  }

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  bool operator ==(Object object) {
    // object yazmamızın nedeni karşılaştırma operatorunu kullanmamiz
    return object is Bank && object.Id == Id;
  }

  void sayBankHello() {
    calculateMoney(money);
  }
}

//Birden fazla mixini yine arayüzde olduğu gibi aralarına virgül koyarak ekleyebiliriz.
// Yine mixin içerisinde ki fonksiyonların override edilmesi mecbur değildir ve
//yine mixin sınıftan bir nesne üretilemez
mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}
