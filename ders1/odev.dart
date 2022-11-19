void main() {
  // değerin değişmesini istemiyorsak final ve const kullanılır
  // final uygulama çalıştığında runtimedaki o anki değeri alır ve atar
  //proje başlarken  kod compiler olunca sabitlenir
  final haliSahaKapasitesi = 100;
  var musteri1 = 20;
  var musteri2 = 50;
  var total = haliSahaKapasitesi - (musteri2 + musteri1);
  print(total);
}
