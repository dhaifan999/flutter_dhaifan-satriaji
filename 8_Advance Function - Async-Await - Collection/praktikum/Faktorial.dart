void main() {
  int nilai = faktor(5);

  print("5! = $nilai");
}

int faktor(nilai) {
  if (nilai == 0) {
    return 1;
  } else {
    return nilai * faktor(nilai - 1);
  }
}
