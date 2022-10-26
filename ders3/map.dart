void main() {
  Map<String, int> users = {'ahmet': 20, 'mehmet': 34, 'ali': 47};
  print('alinin parası${users['ali']}');

  for (var item in users.keys) {
    print('${item}-${users[item]}');
  }

  for (int i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)}-${users.values.elementAt(i)}');
  }

  Map<String, List<int>> vbBank = {
    'Mehmet': [100, 300, 900],
    'Ali': [100, 56]
  };
  //veya
  vbBank['temel'] = [19];

  for (var name in vbBank.keys) {
    for (var money in vbBank[name]!) {
      if (money > 150) {
        print('kredin hazır');
        break;
      }
    }
  }

  for (var name in vbBank.keys) {
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }
    print('$name senin toplam paran ->$result');
  }
}
