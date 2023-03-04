void main() {
  List<double> nilai = [7, 5, 3, 5, 2, 1];

  double sum = nilai.reduce((a, b) => a + b);
  double ave = sum / nilai.length;

  int rataBulat = ave.ceil();

  print("Nilai: $nilai");
  print("Rata-rata: $ave");
  print("Rata-rata dibulatkan ke atas: $rataBulat");
}
