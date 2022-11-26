void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }

  //bir class kendi amacına göe hareket eder gereksiz görevler verilmemeli

}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('ne');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

//açık kapalı kuralı parent a hiç dokunmadan özellik alma
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ';l';
}

//

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//

abstract class IUserOperation {
  void write();
  void read();
  void delete();
  void locationChange();
  void language();
}
// bunun yerine

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

//
abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  DeviceCameraManager(this.iphoneCameraRead);

  @override
  void readQR() {
    iphoneCameraRead.readQR();
  }

  final IphoneCameraRead iphoneCameraRead;
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
