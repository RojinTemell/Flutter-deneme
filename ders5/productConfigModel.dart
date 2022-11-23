class ProductConfig {
  static final ProductConfig instance = ProductConfig._('fagg');

  final String apiKey;
  ProductConfig._(this.apiKey); //artık biri yeni bir tane yapamaz new açısından

}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}
