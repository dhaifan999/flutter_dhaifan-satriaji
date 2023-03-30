# Resume Materi KMFlutter – Dialog Bottom Sheet

## Aplikasi Task Management
Menambahkan dan menghapus kegiatan
1. Membuat model untuk informasi yang mau disimpan pada folder models dan file dart baru "task_model.dart"
2. Membuat Task Screen pada folder screens dan file dart baru "task_screen.dart"
3. Membuat Empty Screen pada folder screens dan file dart baru "empty_task_screen.dart"
4. Menambahkan package provider pada pubspec.yaml
5. Membuat Task Manager pada folder models dan file dart baru "task_manager.dart"
6. menambahkan Task Manager sebagai provider
7. Membuat fungsi buildTaskScreen untuk me-return antara Task Screen yang kosong atau terdapat datanya
8. Membuat Task Item Screen pada folder models dan file dart baru "task_item_screen.dart"
9. Membuat FloatingActionButton untuk menavigasi ke TaskItemScreen
10. Menambahkan state properti, initState dan dispose
11. Membuat buildNameField dan panggil fungsi ListView
12. Membuat buildButton dan panggil fungsinya di dalam ListView
13. Membuat Task Item Card pada folder components dan file dart baru "task_item_card.dart"
14. Menambahkan call back handler di ElevatedButton
15. Membuat Task List Screen pada folder screens dan file dart baru "task_list_screen.dart"
16. Menambahkan properti yang dibutuhkan pada TaskItemCard

## AlertDialog
Untuk menginformasikan pengguna tentang situasi tertentu pada tampilan android, material design serta membutuhkan helper method showDialog. Biasanya digunakan untuk mendapatkan input dari user

## Bottom Sheet
Seperti dialog tetapi muncul dari bawah layar aplikasi dengan menggunakan fungsi bawaan flutter showModalButtonSheet dengan menggunakan properti build dan context
