class BangunRuang {
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;

  int volume() {
    int hasil = panjang * lebar * tinggi;
    return hasil;
  }
}

class Kubus extends BangunRuang {
  Kubus() {
    panjang = 5;
    lebar = 5;
    tinggi = 5;
  }
}

class Balok extends BangunRuang {
  Balok() {
    panjang = 7;
    lebar = 3;
    tinggi = 5;
  }
}

void main() {
  var v1 = Kubus();
  var v2 = Balok();

  print('Volume Kubus adalah : ${v1.volume()}');
  print('Volume Balok adalah : ${v2.volume()}');
}
