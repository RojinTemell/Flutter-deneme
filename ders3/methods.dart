void main() {
  final int userMoney = 5;
  controlUserMoney(userMoney);

  final newUserMoney = 56;
  convertToDolar(newUserMoney);

  int result = convertToDolar(newUserMoney);
  print(result);

  convertToStanartMoney(userMoney);
  convertToStanartMoney(userMoney, dolarIndex: 13);

  convertToEuro(userMoney: 400);
  convertToEuro(userMoney: userMoney);
}

void controlUserMoney(int money) {
  if (money > 0) {
    print('para var');
  } else {
    print('para yok');
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

int convertToStanartMoney(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int euroIndex = 14}) {
  return userMoney ~/ euroIndex;
}
