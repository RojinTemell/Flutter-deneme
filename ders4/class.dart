import 'model/model.dart'; // bu modelle ekleyip import ettikten sonra id ye ulaşamayız
import 'model/model2.dart';

void main() {
  //List<int?> customers = [100, null, 0];

  //bool result = controlMoney(item) == null ? false : true;
  //User user1 = User('vb', 15, 53, 'aassa');
  //print(user1.name);
  // 1. hali (süslü parantez koymadan önce)User user2 = User('er', 5, null, null);
  User user3 = User('erdfb', 45, id: '34');
  User user2 = User('er', 5, id: '143', age: 32, city: 'erwaf');
  print(user2);
  print(user3);

  User2 user_1 = User2('name', 123,
      id: '34'); // burayı sor neden yukarıdakini almadı aşağıda
  print(user_1.writeId('19').toString());
}



/*int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return null;
  }
  if (money == null || money == 0) {
    return null;
  }
}*/


