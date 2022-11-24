import '../ders4/classExtends.dart';

void main(List<String> args) {
  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: 'name',
        money: 35.4,
        isSecondHand: false),
    CarModel(
        category: CarModels.mercedes,
        name: 'name2',
        money: 7635.4,
        isSecondHand: false),
    CarModel(category: CarModels.polo, name: 'name3', money: 354),
    CarModel(
        category: CarModels.bmw,
        name: 'name4',
        money: 275478456,
        isSecondHand: false),
    CarModel(category: CarModels.polo, name: 'name5', money: 73543),
  ];

  final resultCount = carItems
      .where((element) => element.isSecondHand == true)
      .length; // bu kaçtane varın cevabı eğer var mı diye sorarsa
  // where yerine any kullanılır
  print(resultCount);

  final newCar = CarModel(
      category: CarModels.bmw, name: 'name', money: 35.4, isSecondHand: false);

  final isHaveCar = carItems.contains(newCar); //any de kullanılabilir

  if (isHaveCar) {
    // var ama yok diyo referans
    print('var');
  } else {
    print("yok");
  }

  final resultBMWmore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(resultBMWmore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar);
  } catch (e) {
    print('araba yok');
  } finally {
    print('hep çaılıcak bu satır');
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.add(CarModel(
      category: CarModels.bmw, name: 'name', money: 35.4, isSecondHand: false));
  carItems.sort((first, second) => first.money.compareTo(second.money));
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  print(users);

  carItems.remove(newCar);
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 300);

  print(carItems);

  void calculateToUser(List<CarModel> items) {
    final newItems = items.map((CarModel e) {
      if (e.category == CarModels.bmw) {
        e.category = CarModels.polo;
      }
      if (e.isSecondHand) {
        e.isSecondHand = false;
      }
      return e;
    });
    print(newItems);
  }

  calculateToUser(carItems);
}

class CarModel {
  CarModels category;
  final String name;
  final double money;
  List<User> users;
  String? city;
  bool isSecondHand;

  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const []});
}

/*@override sor burayı
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
           other.category ==category &&
           other.name== name &&
           other.money== money &&
           other.city == city &&
           other.isSecondHand= isSecondHand;
  }
  
}
@override
int get hashCode{
  return category.hashCode^name.hashCode^money.hashCode^city.hashCode^isSecond.hashCode;
}
*/
enum CarModels {
  bmw,
  mercedes,
  polo,
}
