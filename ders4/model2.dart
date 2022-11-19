class User2 {
  // get-set
  /* int _money;
  int get money => money;
  set money(int money) {
    // işlem
    if(money<0){ return;}
   }
    //_money = money;
     
    veya 
    int _money;
    int get money => _money;
    set money(int? money){
      if(money==null){
        _money=0;
      }
      else{
        _money =money;
      }
      şu if else kısmı yerine kısaca aşağıdakini diyebiliriz
      _money = money == null ? 0:money;
    }
    */
  final String name;
  late final String _id;
  final String? city;
  final String? age;
  int money;
  late final String userCode;

  User2(this.name, this.money, {required String id, this.city, this.age}) {
    _id = id;
    userCode = (city ?? 'ist') + name;
  }
}
