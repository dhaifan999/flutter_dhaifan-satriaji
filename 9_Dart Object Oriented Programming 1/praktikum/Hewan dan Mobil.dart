class Hewan {
  String nama = "Hewan";
  int berat = 0;
}

class Kucing extends Hewan {
  Kucing() {
    nama = "Kucing";
    berat = 5;
  }
}

class Anjing extends Hewan {
  Anjing() {
    nama = "Anjing";
    berat = 12;
  }
}

class Kambing extends Hewan {
  Kambing() {
    nama = "Kambing";
    berat = 25;
  }
}

class Mobil {
  int kapasitas = 60;
  List<String> muatan = ["Kucing, Kambing"];

  void tambahMuatan() {
    print("Muatan masih bisa ditambah");
  }
}

void main() {
  var h1 = Kucing();
  var h2 = Anjing();
  var h3 = Kambing();
  var mobil = Mobil();

  if ((h1.berat + h2.berat + h3.berat) < mobil.kapasitas) {
    mobil.tambahMuatan();
    print("List Hewan : ${mobil.muatan}");
  } else {
    print("Kapasitas sudah penuh");
  }
}
