# Resume Materi KMFlutter – Flutter State Management (BLoC)

## Declarative UI
- Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
- Terdapat 2 jenis state dalam flutter, yaitu ephemeral state dan app state

## Ephemeral State
Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, seperti :
- Page View
- BottomNavigationBar
- Switch Button

Tidak perlu state Management yang kompleks dan hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

## App State
Digunakan ketika bagian lain suatu aplikasi membutuhkan akses ke data state widget, seperti :
- Login Info
- Pengaturan preferensi pengguna
- Keranjang belanja, dimana informasi yang pengguna pilih akan muncul di screen yang berbeda

## BLoC
- BLoC (Business Logic Component), memisahkan antara busineess logic dengan UI
- Kenapa harus memakai BLoC : Simple, Powerful, dan Testable
- Cara Kerja BLoC :
    1. Menerima event sebagai input
    2. Dianalisa dan Dikelola di dalam BLoC
    3. Menghasilkan state sebagai output

