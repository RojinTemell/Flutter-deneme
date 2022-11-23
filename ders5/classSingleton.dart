import 'productConfigModel.dart';

void main(List<String> args) {
  // bir data olsun ve hep o kullanılsın örnek olsun
  // siz oldurmedeginiz surece hep yasar
  final newProduct = Product.money;
  calculateMoney();

  //user classını kullanarak product yapmak istiyorum
  final user1 = User('name', 'product');
  final new_Product = Product(user1.product);
  final newProduct2 = Product.fromUser(user1);

  //api key neydi
  ProductConfig.instance.apiKey;
}

void calculateMoney() {
  if ((Product.money ?? 0) > 5) {
    print('5 tl eklendi');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int? money = 10;
  String name;

  Product(this.name);
  Product.veli([this.name = ' name']); //burayı anlamadım
  factory Product.fromUser(User user) {
    // constructorın geriye değer dondurmesi için factory kullanılmalı
    return Product(user.name);
  }

  static const companyName = " VB Bank";
  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
