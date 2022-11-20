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
  late final String
      _id; // private eğer modelde kullanırsak tamamen gözükmez "_" değeri  private yapar

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.age = age;
    this.city = city;
    this.money = money;
    _id = id;
    // sadce soru işareti gelirse null dönebileceğini söyler ve kullanıcı tanımlaarken null değeri girmeliyiz
    // ama süslü parentez içine yazarsak bu değerleri hiç bir şey girmemize gerek kalmaz
    userCode = (city ?? 'ist') + name;
    // userCode u yukrda yzmadığımızda neden hata vermedi SOR
  }
  bool isSpecialUser(String id) {
    return _id == id;
  }

  //bool isEmptyId(String id) {
  //  return _id == id;
  //}
  // yukarıdaki yerine daha yaygın olan kullanım altaki

  //bool isEmptyId() => _id.isEmpty; bu da kulanılır am parantez boşuna kullanıldığı için aşağıdaki kullanılır
  bool get isEmptyId => _id.isEmpty; // her defasında çağrılır
}
