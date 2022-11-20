void main() {
  if ('ali'.isAdmin()) {
    print('object');
  }
  String? name;
  name.isAdmin();
}

extension StrinUserCheckExtension on String? {
  // String ten ve this ten  sonra ? koymamız string değerin value almasada fonk gözükür
  bool isAdmin() {
    return this?.toLowerCase() ==
        'admin'
            .toLowerCase(); // burası yerine aşağıdaki deyazılabilir neden peki bu hata vermiyor
    // çünkü tolowercase() null olduğunu anlıyor
    //return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
