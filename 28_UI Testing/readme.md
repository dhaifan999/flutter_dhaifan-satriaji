# Resume Materi KMFlutter – UI Testing

## Pengertian UI Testing
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna

## Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

## Melakukan UI Testing
1. Instalasi Package Testing
    - Pada umumnya, package testing sudah ter-install sejak project pertama kali dibuat. Tetapi, cara jika ingin meng-install secara manual dapat menjalankan perintah "flutter pub get test" pada terminal
2. Penulisan Script Testing
    - Dilakukan pada folder test
    - Nama file harus diikuti _test.dart
    - Tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing
    - Tiap skenario pengujian disebut test case
3. Script Testing
    - Test case diawali dengan testWidgets dan diberi judul
    - Simulasi proses mengaktifkan halaman AboutScreen
    - Memeriksa apakah di halaman tersebut terdapat teks "About Screen"
4. Menjalankan Testing
    - Perintah flutter test akan menjalankan seluruh file test yang dibuat
    - Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil
    - Jika gagal, maka akan ditampilkan penyebab gagalnya pengujian