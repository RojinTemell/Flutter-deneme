Future<void> main(List<String> args) async {
  print('object');
  // 5 sn bekle sonra gel hiçbir müşteri alma
  //await  Future.forEach([12435],(element) async {
  //await Future.delayed(Duration(seconds:2));
  //});
  //await Future.delayed(Duration(seconds: 2));
  print('c');

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 1354);
  bankMoneys.listen((event) => print(event));
  print('object');

  Future.delayed(Duration(seconds: 2)).whenComplete(() => print('object2'));

  print('object3');

  Future.delayed(Duration(seconds: 1)).whenComplete(() => print('object4'));
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}
