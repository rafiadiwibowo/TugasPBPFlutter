# Tugas 7: Elemen Dasar Flutter
 
## Perbedaan _Stateless Widget_ dengan _Stateful Widget_
Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

## Widget yang digunakan
- **Visibility**: _Widget_ ini digunakan untuk membuat fungsionalitas tombol _decrement_ yang hilang apabila _counter_ = 0.
- **Row**: Digunakan untuk menempatkan kedua tombol tadi pada satu baris yang akan diletakkan pada bawah kiri dan kanan app.
- **Scaffold**: WFidget utama untuk membuat sebuah halaman pada flutter, scaffold ini memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
- **AppBar**: Tempat dimana _title_ dari program ditampilkan.
- **Text**: Untuk menampilkan tipe bilangan serta _title_ dari program.
- **Theme**: Menentukan tema warna dari app.
- **Center**: Digunakan untuk menampilkan kolom berisi tipe bilangan serta angkanya di tengah layar.

## Fungsi dari ```setState()```
setState() yang akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah.

## Perbedaan ```const``` dan ```final```
Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.

Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time.

## Pengimplementasian checklist
Menambahkan ```_decrementcounter()``` untuk melakukan decrement pada counter dan menambahkan ```_typecheck``` untuk melakukan pengecekan apakah angka yang dimunculkan oleh widget tersebut GENAP atau GANJIL. Membuat ```FloatingActionButton``` yang dimasukkan kedalam Scaffold untuk meampilkan semua counter dan juga button-button tersebut

# Tugas 8: Elemen Dasar Flutter

## Perbedaan ```Navigator.push``` dan ```Navigator.pushReplacement```
```Navigator.push```: Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
```Navigator.pushReplacement```: Melakukan push juga untuk me-routing user ke halaman yang baru.

## Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- DropdownButtonFormField: Untuk menu dropdown user input
- Form: Untuk user melakukan input dan menampung elemen fields dan disimpan
- ListTile: Menyimpan data di dalam widget lalu dimasukkan ke dalam cards.
- Card: Untuk penampung data hasil input dan akan ditampilkan

## Jenis-jenis event yang ada pada Flutter
- onpressed: Sebagai trigger jika button ditekan
- onChanged: Sebagai penerima input selama pengguna sedang melakukan perubahan terhadap value yang dimiliki
- onSaved: Sebagai penyimpan jika form tersebut disimpan oleh FormState.save

## Cara kerja ```Navigator```
Dengan memanfaatkan konsep stack, yang mana flutter akan melakukan push ke halaman yang ingin dijalankan dan juga dapat menggunakan pop untuk kembali kehalaman sebelumnya

## Mengimplementasikan chechlist di atas
Membuat file baru yaitu ```form.dart``` dan juga ```data.dart``` dan mengimplementasikan appbar pada setiap file dan . Lalu,  membuat drawer pada masing-masing file supaya bisa pindah-pindah halaman. Membuat widget-widget yang dibutuhkan pada ```form.dart```, dan membuat class pada ```data.dart``` untuk menyimpan input dari ```form.dart``` tersebut. Kemudiang mengimplementasikan ListView untuk menampilkan data-data tersebut.

# Tugas 9: Integrasi Web Service pada Flutter

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

