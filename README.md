# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7
<div align = "justify">

1. Hampir seluruh tampilan yang ada pada Flutter adalah sebuah widget. Widget tree pada Flutter adalah suatu struktur pohon yang menggambarkan struktur hierarki antar widget yang ada. Hubungan induk anak (parent-child) dapat ditentukan dengan melihat apakah suatu widget berada dalam widget lain. Contoh: widget A berada dalam widget B, berarti widget A merupakan child dan widget B adalah parentnya. Atau misal pada proyek myportofolio_mobile ini, Text merupakan anak dari Column. Bila anaknya hanya satu maka dapat ditulis child: ..., bila anaknya banyak maka dapat ditulis children: [...]. Parent memberikan batasan yang harus ditaati oleh childnya. Widget di bawah suatu parent akan mewarisi tema dan gaya teks leluhurnya di widget tree, bila tidak ditentukan sendiri.

2. Seluruh widget yang digunakan dalam proyek ini dan fungsinya adalah:

- Pada main.dart:  
    - MyApp: widget untuk membangun MaterialApp.
    - MaterialApp: widget yang mengatur judul, tema warna, dan halaman awal aplikasi.

- Pada menu.dart: 
    - MyHomePage: widget halaman utama yang menampilkan seluruh tampilan menu.
    - Scaffold: kerangka dasar halaman yang terdiri dari komponen AppBar, body, dan SnackBar.
    - AppBar: judul di bagian atas halaman aplikasi (untuk menampilkan tulisan MyPortfolio).
    - Padding: memberi jarak kosong di sekitar child.
    - Column: menyusun child dalam posisi kolom.
    - Row: menyusun child dalam posisi baris.
    - Center: menempatkan child di tengah.
    - SizedBox: memberi jarak kosong antara suatu widget dengan widget lainnya.
    - GridView.count: menampilkan child dalam suatu kolom dengan ukuran tetap.
    - InfoCard: untuk menampilkan informasi NPM, nama, dan kelas.
    - Card: kartu dengan border tidak tajam dan efek bayangan.
    - Container: kotak untuk mengatur ukuran dan padding.
    - ItemCard: untuk tombol menu.
    - Material: menyediakan tempat dimana efek sentuh dari widget InkWell muncul.
    - InkWell: mendeteksi sentuhan pada kartu aksi dan memberikan efek tampilan tertentu.
    - Icon: menampilkan ikon pada tombol menu.
    - Text: menampilkan tulisan.
    - SnackBar: pesan singkat di bagian bawah aplikasi saat tombol ditekan.

3. Fungsi dari widget MaterialApp adalah mengatur judul, tema warna, halaman awal, dan navigasi antar halaman aplikasi. Widget ini umumnya digunakan sebagai root widget karena widget-widget di bawahnya membutuhkan hal-hal tersebut (contoh: butuh warna tema yang sama), sehingga MaterialApp harus ada di root agar bisa diakses seluruh widget. 

4. Perbedaan antara Stateless Widget dan Stateful Widget adalah: 
- Stateless widget: widget yang kondisinya tidak akan berubah akibat interaksi dari pengguna ataupun perubahan data. 
- Stateful widget: widget yang kondisinya bisa berubah akibat interaksi dari pengguna ataupun perubahan data. 
Kita sebaiknya menggunakan stateless widget bila informasi yang ditampilkan pada widget tersebut tidak berubah sepanjang aplikasi dijalankan, contoh: nama pembuat aplikasi tidak akan berubah. Untuk stateful widget sebaiknya kita gunakan bila interaksi user (contoh: input, klik, dan sebagainya) mempengaruhi kondisi tampilan dari widget tersebut, contoh: harga produk yang ditampilkan akan berubah tergantung dari input harga yang penjual (user aplikasi) isi. 

5. BuildContext adalah suatu hal yang menunjukkan lokasi dari sebuah widget di dalam widget tree. Setiap widget punya context, dan karena hal ini, widget tersebut bisa mengakses informasi dari widget leluhurnya. BuildContext ini penting agar setiap widget bisa tahu posisi diri sendiri dalam widget tree dan bisa mengambil data dari leluhurnya (contoh: warna tema). Pada method build, BuildContext merupakan parameter fungsi tersebut, yaitu build(BuildContext context). 

6. Penjelasan konsep hot reload dan hot restart adalah:
- Hot reload: fitur untuk menambahkan perubahan kode ke dalam aplikasi yang sedang berjalan tanpa menjalankan ulang aplikasi. Biasanya prosesnya cepat, state aplikasi tetap dipertahankan, dan tampilan aplikasi langsung berubah.
- Hot restart: fitur untuk memuat ulang kode dan menjalankan ulang aplikasi dari awal (dirun ulang). Biasanya prosesnya lambat, state aplikasi kembali ke kondisi awal. 
Hot reload dapat digunakan bila kita hanya mengubah tampilan UI, contoh: mengubah warna atau teks. Kita tidak bisa menjalankan hot reload bila mengubah hal-hal yang fatal seperti: ubah nilai variabel global atau static, mengubah StatelessWidget menjadi StatefulWidget dan sebaliknya, dan lain sebagainya. Kita harus melakukan hot restart untuk hal-hal ini. Full restart(distop lalu dijalankan ulang) diperlukan bila kita menambah font baru, atau lain sebagainya. 
  
### Setup Mingguan
Pada minggu ini saya melakukan: 
1. Mengubah warna dari tiap kartu aksi pada aplikasi tutorial
2. Menambahkan fitur darkmode sesuai dengan theme dari gadget pengguna

### AI Disclosure
Karena minggu ini belum terlalu banyak mengoding dan saya masih pemula dalam pemrograman Dart ini, saya menggunakan AI sebagai tutor dalam memahami konsep pemrograman aplikasi mobile dan bahasa Dart. 
Strategi prompting yang saya gunakan adalah: 
- Sebelum mengerjakan tugas, saya mengirimkan file Dart yang telah dibuat di Tutorial, lalu meminta AI untuk menjelaskan arti dari tiap baris kodingan dan juga mengapa baris tersebut ada di tempat tertentu.
- Lalu setelah dijelaskan, saya mengecek pemahaman saya dengan menyampaikan pemahaman saya, lalu meminta AI untuk mengecek kebenaran pernyataan tersebut. 
- Saya juga melakukan pengecekan README yang telah saya kerjakan: apakah sudah aman untuk dikumpulkan atau tidak.

### Kekurangan AI: 
Untuk minggu ini, mungkin tidak dapat begitu ditemukan. AI cukup jelas dalam menjelaskan konsep dan kodingan tutorial.

Untuk selengkapnya dapat dilihat di: 
- https://share.gemini.google/0Xq0sNi9xMDR
- https://share.gemini.google/hCLzQAQSv6RD
</div>


### Tugas 8
<div align = "justify">

1. Perbedaan antara Navigator.push(), Navigator.pushReplacement(), dan Navigator.pop() adalah: 
- Navigator.push() : menambahkan suatu route ke dalam stack route yang ada di Navigator. Method push() akan menambahkan route ke paling atas stack. 
- Navigator.pushReplacement() : menghapus route yang berada di paling atas stack (yang ditampilkan ke pengguna) lalu menggantinya dengan suatu route lain. 
- Navigator.pop() : mengeluarkan suatu route dari stack route yang ada di Navigator. Method pop() akan mengeluarkan route dari paling atas stack, sehingga halaman yang ditampilkan adalah halaman yang ada di bawah route yang dipop. 

Metode yang digunakan untuk membuka formulir dari kartu aksi adalah Navigator.push(), karena kita ingin menambahkan routing halaman formulir tersendiri, lalu nanti bila pengguna menekan tombol Cancel, maka Navigator akan dipop. Sementara opsi Home di drawer membawa pengguna kembali ke halaman utama dengan menggunakan Navigator.pushReplacement(). Alurnya adalah pengguna sedang berada di halaman manapun, lalu ia membuka drawer dan mengklik home, maka routing paling atas di stack akan diubah menjadi route ke halaman Home. 

Keputusan desain ini dilakukan karena: 
Misal kita anggap stack Navigator tidak kosong dan ada isinya. 
- Saat kita ingin mengisi form, lalu kita tidak jadi melakukannya, maka kita ingin kembali ke kondisi terakhir sebelumnya --> maka kita gunakan push dan pop.  
- Saat kita ingin ke halaman Home, maka kita tidak ingin melihat halaman yang sekarang lagi sehingga tidak perlu menyimpannya di stack, sedangkan halaman yang ada di bawahnya punya kemungkinan untuk dikunjungi lagi nanti, jadi kita gunakan pushReplacement.


2. Susunan Scaffold, AppBar, dan Drawer membantu menjaga struktur halaman tetap konsisten dengan cara: 
- Untuk Scaffold dan AppBar: merupakan layout yang disediakan Flutter untuk menyusun suatu halaman agar terorganisir secara rapi. Setiap halaman punya kerangka dan judul di bagian atas yang sama (AppBar), sehingga tetap konsisten.
- Untuk drawer: karena left drawer berada pada file tersendiri, maka tinggal dilakukan import dan digunakan pada halaman-halaman yang membutuhkan drawer. 

Penggunaan warna tema portofolio di lebih dari satu halaman: 
Pada main.dart, warna primary dideklarasikan sebagai Colors.indigo. Halaman menu.dart dan halaman form lalu mengambil warna tersebut melalui Theme.of(context).colorScheme.primary, sehingga semua halaman memakai warna yang sama dan perubahan warna cukup dilakukan di satu tempat (main.dart).


3. Saya mengasumsikan kata "tersebut" merujuk pada pertanyaan nomor 2. Scaffold adalah widget layout bawaan Flutter yang menyediakan struktur dasar halaman, dengan komponen seperti appBar, drawer, dan body. Scaffold digunakan karena struktur halaman disediakan (framework), sehingga kita tidak perlu mengatur layout dari nol. AppBar digunakan untuk menampilkan judul halaman, sedangkan Drawer digunakan sebagai navigator antar halaman. Untuk pengaturan jarak, setiap input dibungkus oleh widget Padding dengan padding: const EdgeInsets.all(8.0) agar ada jarak antar input. Untuk menangani layar yang terbatas, digunakan SingleChildScrollView. Jika jumlah input banyak atau ruang layar tidak cukup, form tetap bisa discroll ke bawah dan tidak keluar batas.


4. Peran GlobalKey Formstate adalah untuk mengakses state dari Form sehingga kita dapat menjalankan validasi pada seluruh input langsung sekaligus dengan memanggil fungsi validate() saat tombol Simpan ditekan. Fungsi validate() akan menjalankan validator pada setiap widget input. Contoh nilai yang ditolak oleh validasi adalah string kosong atau string yang hanya berisi spasi. Secara tipe data memang string, namun tidak punya isi yang dapat digunakan. Memilih jenis input atau papan ketik saja belum cukup karena jenis input hanya membatasi tipe data yang diinput. Contoh, pada input umur yang meminta input angka, pengguna tetap bisa memasukkan 300. Nilainya memang angka, tetapi secara konteks tidak masuk akal, sehingga tetap perlu validator untuk membatasi input angkanya agar masih dalam konteks wajar.


### Setup Mingguan
Pada minggu ini saya melakukan: 
1. Menambahkan form untuk Experience + navigasi ke form tersebut
2. Menambahkan button cancel pada halaman form


### AI Disclosure
Pada minggu ini, saya menggunakan AI sebagai teman debugging dan tutor. 
Strategi prompting yang saya gunakan adalah: 
- Saya cari dulu di Google dan Youtube bagaimana menerapkan suatu hal, contoh: showDatePicker(). Lalu saya implementasikan sesuai apa yang telah dipahami. Saat error, saya meminta AI untuk menjelaskan error dan kemungkinan penyebabnya. Berdasarkan feedback dari AI, saya melakukan perbaikan. Apabila masih error, maka saya jelaskan apa yang telah dilakukan dan meminta AI menjelaskan kembali. 
- Saya juga menggunakan AI sebagai tutor. Setelah membaca documentation Futter, saya kurang paham sehingga saya meminta AI untuk menjelaskan kembali. 


### Kekurangan AI: 
Untuk minggu ini, saya tidak menemukan kekurangan AI yang cukup signifikan. AI mampu menjawab dengan cukup baik walau konteksnya kurang lengkap karena saya hanya mengirimkan potongan kode. 

Untuk selengkapnya dapat dilihat di: 
https://share.gemini.google/gsoOpNmQFi8R

</div>