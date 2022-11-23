void main(List<String> args) {
  final car = CarModel(
      category: CarModels.bmw, name: 'name', money: 35.4, isSecondHand: false);

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
}

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
}

/*@override
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
