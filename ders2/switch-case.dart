void main() {
  final int classDegree = 2;
  bool isSucces = false;
  //if e göre daha performanslı

  switch (classDegree) {
    case 2:
      print('bravo');
      isSucces = true;
      break;
    case 1:
      print('olur');
      isSucces = true;
      break;
    case 0:
      print('yeterli');
      isSucces = true;
      break;
    default:
      print('başarısız');
      isSucces = false;
  }

  print('çocuğunuzun sonucu:$isSucces');

  // ornek 2

  String name = 'dsjkh';
  const String nameUser1 = 'veli';
  const String nameUser2 = 'ali';

  switch (name) {
    case nameUser1:
    case nameUser2:
      print('bravo');
      break;
    default:
      print('sorunlu');
  }
}
