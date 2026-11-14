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
Pada main.dart:  
- MyApp: widget untuk membangun MaterialApp.
- MaterialApp: widget yang mengatur judul, tema warna, dan halaman awal aplikasi.

Pada menu.dart: 
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