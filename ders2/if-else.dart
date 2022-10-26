void main() {
  // if - else
  // bool => 0,1

// ornek 1
  int money = 20;
  if (money > 10) {
    print('zengin');
  } else {
    print('fakir');
  }

  money -= 10; //money=money-10
  if (money > 10) {
    print('sen çok zenginsin');
  } else {
    print('burda ne işin var');
  }

  // ornek 2
  int newCustomerMoney = 10;
  const int bankingCostGeneral = 20;
  if (newCustomerMoney > 5) {
    print('hoşgeldiniz');
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print('sira alin');
  } else {
    print(' kredi ödeyin');
  }

  //ornek 3
  final String ornek1 = 'ahmet';
  final String ornek2 = 'mehmet ali';
  final String ornek3 = 'veli';
  final String ornek4 = 'kx';
  final String ornek5 = 'x';

  const int companyLength = 2;
  String results = '';

  if (ornek1.length <= companyLength) {
    results += ornek1;
  }
  if (ornek2.length <= companyLength) {
    results += ornek2;
  }
  if (ornek3.length <= companyLength) {
    results += ornek3;
  }
  if (ornek4.length <= companyLength) {
    results += ornek4;
  }
  if (ornek5.length <= companyLength) {
    results += ornek5;
  }

  if (results.isEmpty) {
    print('isim bulunamadı');
  } else {
    print(results);
  }
}
