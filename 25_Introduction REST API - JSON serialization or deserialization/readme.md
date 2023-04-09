# Resume Materi KMFlutter – Introduction REST API

## Rest API
Representational State Transfer Application Programming Interface
- Arsitektural yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

## HTTP
Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web
- Pola Komunikasi
  - Client mengirim request
  - Server mengolah dan membalas dengan memberi response
- Struktur Request
  - URL, alamat halaman yang akan diakses
  - Method (GET, POST, PUT, DELETE), menunjukkan aksi yang diinginkan
  - Header, informasi tambahan terkait request yang dikirimkan
  - Body, data yang disertakan bersama request
- Struktur Response
  - Status Code, kode yang mewakili keseluruhan response baik sukses maupun gagal
  - Header, informasi tambahan terkait response yang diberikan
  - Body, data yang disertakan bersama response

## DIO
- Sebagai HTTP Client
- Dimanfaatkan untuk melakukan REST API
- Instalasi, menambahkan dependency pada pubspec.yaml dan menjalankan perintah flutter pub get pada terminal
- Penggunaan, mengambil data menggunakan Dio dan menanmpilkan hasilnya pada console

## Serialisasi JSON
- Cara penulisan data
- Javascript Object Notation
- Umum digunakan pada REST API
1. Serialisasi JSON
    - Mengubah struktur data ke bentuk JSON
    - Menggunakan fungsi jsonEncode dari package dart:convert
2. Deserialisasi JSON
    - Mengubah bentuk JSON ke struktur data
    - Menggunakan fungsi jsonDecode dari package dart:convert