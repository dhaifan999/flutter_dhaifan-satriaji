import 'dart:io';

void main() {
  int i, j;
  int tinggi = 6;
  int k = 0;

  for (i = tinggi; i >= 1; i--) {
    for (j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }

    k = 0;
    while (k != 2 * i - 1) {
      stdout.write('0');
      ++k;
    }

    print('');
  }

  for (i = 2; i <= tinggi; i++) {
    for (j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }

    while (k != 2 * i - 1) {
      stdout.write('0');
      ++k;
    }
    k = 0;

    print('');
  }
}
