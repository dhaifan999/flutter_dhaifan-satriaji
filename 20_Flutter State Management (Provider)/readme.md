# Resume Materi KMFlutter – Flutter State Management (Provider)

## Pengertian State
- Data yang dapat dibaca saat menggunakan pembuatan widget 
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefulWidget

## Kenapa perlu Global State
- Agar antara widget dapat memanfaatkan state yang sama dengan mudah
- Memanfaatkan State dengan dibuat sebagai property dari class dan digunakan pada widget saat build
- Mengubah State dengan menggunakan setState

## Global State
State biasa yang dapat digunakan pada seluruh widget
- Instalasi Provider dengan menambahkan package provider ke dalam file pubspecs.yaml
- Membuat State Provider dengan mendefinisikan state dalam bentuk class
- Mendaftarkan State Provider dengan mendaftarkan pada runApp dengan MultiProvider
- Menggunakan State dari Provider dengan menyimpan provider dalam variable dan mengambil data dari provider melalui getter