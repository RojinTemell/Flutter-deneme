//musteriinin adını tut
//musterinin parasını ogren
//merhaba diyip parasını göster
//parasına  5 tl ekle
void main() {
  int userMoney = 25;
  String userName = 'Rojin';
  userMoney += 5;
  print("merhaba $userName $userMoney");

  double ahmetMoney = 78.9;
  print(ahmetMoney);
  // int veri tipi eğer işlrm sonunda küsüratlıysa hata verir
  // bu sorunu gidermek için
  //1. toint()
  //2. ~ kullanılabilir

  userMoney = userMoney ~/ 2;
}
