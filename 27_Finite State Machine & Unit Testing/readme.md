# Resume Materi KMFlutter – Finite State Machine

## Finish State Machine
Pengertian Finish State Machine:
- Mesin yang memiliki sejumlah state
- Tiap state menunjukkan apa yang terjadi sebelumnya

Contoh:
- Terdapat 3 state yang menunjukkan kejadian dalam suatu proses
- IDDLE kondisi saat tidak terjadi proses
- RUNNING kondisi saat proses sedang berjalan
- ERROR kondisi saat proses gagal diselesaikan

Contoh Sukses:
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai

Contoh Gagal:
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE

## Implementasi pada View-Model
1. Menambah Enum
    Membuat enum untuk masing-masing state:
    - none saat IDDLE
    - loading saat RUNNING
    - error saat ERROR
2. Menambah Getter-Setter
    Membuat getter-setter untuk menyimpan state dari widget
3. Gunakan State
    Tiap proses yang perlu state tersebut, dapat memanfaatkannya

## Implementasi pada Widget
1. Perbedaan Tampilan Tiap State
    - Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan.
    - Saat state menunjukkan RUNNING, maka ditampilkan progress indicator.
    - Saat state menunjukkan IDDLE setelah RUNNING, maka ditampilkan data yang didapatkan.
    - Saat state menunjukkan ERROR, maka ditampilkan pesan yang menunjukkan bahwa proses tidak dapat diselesaikan.

## Unit Test
1. Pengertian
    - Salah satu jenis pengujian pada perangkat lunak
    - Pengujian dilakukan pada uniot dalam perangkat lunak
    - Unit yang dimaksud umumnya adalah fungsi atau method
2. Tujuan
    - Memastikan fungsi dapat mengolah berbagai jenis input
    - Memastikan hasil dari suatu fungsi atau method sudah sesuai
    - Menjadi dokumentasi

## Mocking
1. Pengertian
    - Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
    - Pengaruh tersebut dapat mengganggu proses pengujian
    - Dilakukan mocking untuk menghindari masalah-masalah tersebut
2. Cara Kerja
    - Suatu object dibuat bentuk tiruannya
    - Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
    - Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal