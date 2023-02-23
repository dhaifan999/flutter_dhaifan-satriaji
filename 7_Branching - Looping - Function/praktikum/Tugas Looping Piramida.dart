import 'dart:io';

void main() {
  int i, j, k;
  int tinggi = 8;
  for (i = 1; i <= tinggi; i++) {
    for (j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    for (k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }

    print('');
  }
}
