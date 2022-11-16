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
