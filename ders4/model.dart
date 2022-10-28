class User {
  // özellikler tanımlanmalı
  // dart dilinde ? değişkenin null dönebebileceğini söyler
  // ! işareti nesnenin kesin dolu geliceğini söyler çok kullanılması önerilmez
  // late o degerin sonradan verileceğini belirtir
  late final String name;
  late int money;
  late final int? age;
  late String? city;
  late final String userCode;
  late final String _id; // private eğer modelde kullanırsak tamamen gözükmez

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.age = age;
    this.city = city;
    this.money = money;
    _id = id;

    userCode = (city ?? 'ist') + name;
  }
  bool isSpecialUser(String id) {
    return _id == id;

    // not
    //bool isEmptyId() {
    //  return _id.isEmpty();
    //}

    //bool get isEmptyId=>_id.İsEmpty;  niye ölü kod diyor

    // burayı sor
  }
}
