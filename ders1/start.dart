void main() {
  print("hello my first project");
  print(2 + 3);
  print("hello " + "world");

  // veri tipleri veriyi yönetmeni ,saklamanı sağlar
  String hello = "hello dart ";
  print(hello);

  int money = 150;
  print(money);

  //bir string ve int toplanmaz
  //int değeri stringe çevirmenin iki yolu vardır
  //1. tostring()
  //$ işareti
  print(hello + "$money");

  //not
  print("toplam: " + "${25 + 45}");
}
