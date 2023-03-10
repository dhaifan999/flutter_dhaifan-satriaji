abstract class Matematika {
  int hasil();
  int cariKPK(int x, int y);
  int cariFPB(int x, int y);
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x, y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    return cariKPK(x, y);
  }

  @override
  int cariKPK(int x, int y) {
    int kpk = x * y;
    for (int i = kpk; i >= 1; i--) {
      if (i % x == 0 && i % y == 0) {
        return i;
      }
    }
    return kpk;
  }

  @override
  int cariFPB(int x, int y) {
    while (y != 0) {
      int r = x % y;
      x = y;
      y = r;
    }
    return x;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x, y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    return cariFPB(x, y);
  }

  @override
  int cariKPK(int x, int y) {
    int kpk = x * y;
    for (int i = kpk; i >= 1; i--) {
      if (i % x == 0 && i % y == 0) {
        return i;
      }
    }
    return kpk;
  }

  @override
  int cariFPB(int x, int y) {
    while (y != 0) {
      int r = x % y;
      x = y;
      y = r;
    }
    return x;
  }
}

void main() {
  var opKPK = KelipatanPersekutuanTerkecil(15, 20);
  var opFPB = FaktorPersekutuanTerbesar(15, 20);

  print('KPK bilangan tersebut adalah : ${opKPK.hasil()}');
  print('FPB bilangan tersebut adalah : ${opFPB.hasil()}');
}
