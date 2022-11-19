void main() {
  final List<int> moneys = [
    120,
    123,
    125,
    78,
    54
  ]; // final yapılınca değiştirilemez ama bir şey eklenebilir değerler değişebilir referanslardan dolayı işlem yapılıyor
  print('1.musterinin parası:${moneys[0]}');

  moneys.sort(); //  küçükten büyüğe
  print(moneys);
  moneys.add(33); // sona ekleme
  print(moneys);
  moneys.insert(2, 40); // istediğimiz yere değeri ekleme
  print(moneys);

  List<double> moneyCustomerNews = [100, 30, 90, 76];
  for (int i = moneyCustomerNews.length - 1; i >= 0; i--) {
    print('musterinin parası: ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 30) {
      print('${moneyCustomerNews[i]}TL li müşteri bankamıza hoşgeldiniz');
    } else {
      print('${moneyCustomerNews[i]}TL li müşteri başka banka seçiniz');
    }
  }

  List<dynamic> users = [
    1,
    'rojin',
    true
  ]; //dynamic demek listenin içindekine göre tip almasıdır ve hiç önerilmez tüm tipleri kullanmamız

  for (var item in users) {
    // for in çok kullanışlıdır
    print(item);
  }
}
