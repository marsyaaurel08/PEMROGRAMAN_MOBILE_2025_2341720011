# Pemrograman Mobile Week 10

Nama : Marsya Aurelia Sefira

Kelas : 3G

NIM : 2341720011

# Praktikum 1 : Dasar State dengan Model-View

Hasil output praktikum 1

![Gambar Praktikum 1](./master_plan/img/Praktikum1.png)

# Tugas Praktikum 1

1. Hasil output praktikum 1

![Gambar Praktikum 1](./master_plan/img/Praktikum1.png)

Penjelasan : Pada gambar diatas menghasilkan output Master Plan Marsya, dimana pengguna dapat menambahkan plan baru untuk menandai tugas. Aplikasi ini dihasilkan dari struktur folder terpisah antara models dan views. Folder models berisi logika seperti kelas Plan dan Task yang mengatur struktur rencana dan daftar tugas. Sedangkan folder views berisi tampilan seperti plan_creator_screen.dart dan plan_screen.dart.

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Jawaban : membuat file data_layer.dart yang berfungsi sebagai penghubung utama antara file model di folder models, file ini menyederhanakan manajemen model, serta memperingkas kode, jadi import untuk models, bisa import data_layer.dart tanpa perlu mengimport banyak file models yang tersedia.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Jawaban : variabel plan dibuat untuk menyimpan data plan dan daftar task yang akan ditampilkan, dibuat sebagai konstanta karena data awalnya masih kosong, hal ini dilakukan agar menunjukkan bahwa data belum dimodifikasi dan efisien memori.

4. Hasil dari langkah 9 dengan penjelasannya 

Jawaban : Hasilnya sama dengan gambar hasil praktikum 1 diatas, kode pada langkah 9 menghasilkan satu item task dalam bentuk list tile yang bisa diedit dan diberi centang pada checkboxnya.

5. Apa kegunan method pada langkah 11 dan 13 dalam lifecycle state? 

Jawaban : Langkah 11 method initState() digunakan untuk menginisialisasi dan pada langkah 13 method dispose digunakan untuk membersihkan ketika widget masuk dan keluar.

6. Kumpulkan link commit => akan dikumpulkan di classroom

# Praktikum 2 : Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

Hasil output praktikum 2

![Gambar Praktikum 2](./master_plan/img/Praktikum2.png)

1. Penjelasan hasil output praktikum 2 : Pada gambar diatas tampilannya sama dengan hasil praktikum 1, yang membedakan adalah penambahan struktur folder provider yang digunakan untuk mengatur perubahan data secara reaktif, dipisah menggunakan folder provider agar lebih efisien dan terpisah dari tampilan.

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

Jawaban : InheritedWidget digunakan untuk membagikan data ke widget yang ada dibawahnya tanpa harus kirim lewat constructor, InheritedNotifier otomatis mendengar perubahan daru Listenable, dapat rebuild otomatis saat data berubah.

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

Jawaban : method completedCount menghitung jumlah task yang sudah selesai, method completenessMessage membuat pesan ringkas tentang progres task "0 out of 5 tasks" yang nantinya ditampilkan pada bagian bawah halaman.

4. Penjelasan langkah 9 

Jawaban : dari kode pada langkah 9, halaman master plan marsya akan ditampilkan seperti hasil praktikum 2, daftar task akan ditampilkan dinamis, dan update otomatis jika ada perubahan.

5. Kumpulkan link commit github => link akan dikumpulkan di classroom





