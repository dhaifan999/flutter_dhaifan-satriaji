# Resume Materi KMFlutter – Flutter Navigation

## Apa itu Navigation
Berpindah dari halaman satu ke halaman yang lain

## Navigation Dasar
Perpindahan ke halaman selanjutnya menggunakan
- Navigator.push()

perpindahan ke halaman sebelumnya menggunakan
- Navigator.pop()

Mengirim data ke halaman baru dengan menggunakan parameter pada constructor halaman

## Navigation dengan Named Routes
Route adalah tiap halaman yang memiliki alamat
Perpindahan halaman menggunakan
- Navigator.pushNamed()

Kembali ke halaman sebelumnya menggunakan
- Navigator.pop()

Mendaftarkan Route dengan menambahkan initialRoute dan routes pada MaterialApp yang tiap Routenya adalah fungsi yang membentuk halaman
