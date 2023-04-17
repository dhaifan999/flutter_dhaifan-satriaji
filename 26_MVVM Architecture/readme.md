# Resume Materi KMFlutter – MVVM Architecture

## Apa itu MVVM Architecture
- MVVM kepanjangan dari Model-View ViewModel
- Memisahkan logic dengan tampilan (view) ke dalam ViewModel

## Keuntungan menggunakan MVVM Architecture
1. Reusability, jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
2. Maintainability, mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
3. Testability, pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

## Aturan dan cara melakukan MVVM
1. Struktur Direktori
    - Memiliki 2 bagian Model yaitu data yang akan digunakan dan sumber dari data tersebut
    - Tiap screen diletakkan dalam sebuah direktori View dan ViewModel
2. Model
    - Bentuk data yang akan digunakan, dibuat dalam bentuk class
    - Data-data yang dimuat, diletakkan pada property
3. Model API
    - Mengambil data pada API
4. ViewModel
    - Meyimpan data dan logic di halaman ContactScreen
    - menggunakan ViewModel jika widget lain memerlukan logic yang sama
5. Mendaftarkan ViewModel
    - Menggunakan MultiProvider
    - MaterialApp sebagai child utama
6. View
    - Menggunakan StatefulWidget
7. Menampilkan Data di View
    - Meletakkan pada bagian build dengan menggunakan getters yang ada pada ViewModel
8. Hasil Akhir
    - Terdapat AppBar dan list data contact berupa nama dan nomor telepon