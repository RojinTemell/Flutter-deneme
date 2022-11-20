void main(List<String> args) {
  // bir data olsun ve hep o kullanılsın örnek olsun
  // siz oldurmedeginiz surece hep yasar
  final newProduct = Product.money;
  calculateMoney();
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
  static const companyName = " VB Bank";
  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}
