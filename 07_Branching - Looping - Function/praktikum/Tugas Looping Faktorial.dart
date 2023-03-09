void main() {
  int nilai;
  int nilaiA = faktor(10);
  int nilaiB = faktor(40);
  int nilaiC = faktor(50);

  print("10! = $nilaiA");
  print("40! = $nilaiB");
  print("50! = $nilaiC");
}

int faktor(nilai) {
  if (nilai == 0) {
    return 1;
  } else {
    return nilai * faktor(nilai - 1);
  }
}
