class Calculator {
  double add(double nilai1, double nilai2) {
    return nilai1 + nilai2;
  }

  double subtract(double nilai1, double nilai2) {
    return nilai1 - nilai2;
  }

  double multiply(double nilai1, double nilai2) {
    return nilai1 * nilai2;
  }

  double divide(double nilai1, double nilai2) {
    if (nilai2 == 0) {
      throw Exception('Bilangan tidak dapat dibagi dengan angka 0');
    }
    return nilai1 / nilai2;
  }
}

void main() {
  Calculator kalkulator = Calculator();

  double hasilTambah = kalkulator.add(6, 6);
  double hasilKurang = kalkulator.subtract(6, 6);
  double hasilKali = kalkulator.multiply(6, 6);
  double hasilBagi = kalkulator.divide(6, 6);

  print(hasilTambah);
  print(hasilKurang);
  print(hasilKali);
  print(hasilBagi);
}
