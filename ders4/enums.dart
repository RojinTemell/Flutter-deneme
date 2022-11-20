void main() {
  // enum sınıflandırma demek
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);

  switch (customerMouse) {
    case Mouses.magic:

    case Mouses.apple:

    case Mouses.logitech:

    case Mouses.a4:
  }

  if (customerMouse == Mouses.a4) {}
  //yukarıdaki daha kullanışlı daha performanslı final gibi olaylardan dolayı
  //if(customerMouse.name=='a4'){}
  if (customerMouse.isCheckName('a4')) {
    print('aa');
  }
}

enum Mouses {
  // enum  içine fonksiyon gibi şeyler yazılamaz
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectionExtension on Mouses {
  bool isCheckName(name) {
    return this.name == name;
  }
}
