import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/data.dart';

List<Data> listData = [];

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String? _judullengkap;
    String? _nominallengkap;
    String? _pilihan;
    List<String> list_pilihan = ['Pengeluaran', 'Pemasukan'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form'),
            ),
            drawer: Drawer(
            child: Column(
            children: [
                // Menambahkan clickable menu
                ListTile(
                title: const Text('Counter'),
                onTap: () {
                    // Route menu ke halaman utama
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage()),
                    );
                    },
                ),
                ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                    );
                },
                ),
                ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                    // Route menu ke halaman form
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDataPage()),
                    );
                },
                ),
            ],
            ),
        ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                            Padding(
                                // Menggunakan padding sebesar 8 pixels
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Masukkan Judul",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _judullengkap = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _judullengkap = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Nama lengkap tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            Padding(
                                // Menggunakan padding sebesar 8 pixels
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Nominal",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _nominallengkap = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _nominallengkap = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Nominal tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            DropdownButton(
                                value: _pilihan,
                                hint: const Text("Pilih Jenis"),
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: list_pilihan.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                    );
                                }).toList(),
                                onChanged: (String? newValue) {
                                    setState(() {
                                        _pilihan = newValue!;
                                    });
                                },
                            ),
                            TextButton(
                                child: const Text(
                                    "Simpan",
                                    style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                        if (_pilihan == "Pemasukan") {
                                            Data data = Data(_pilihan.toString(), _nominallengkap.toString(), _judullengkap.toString());
                                            listData.add(data);
                                        } else if (_pilihan == "Pengeluaran") {
                                            Data data = Data(_pilihan.toString(), _nominallengkap.toString(), _judullengkap.toString());
                                            listData.add(data);
                                        } else {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                return Dialog(
                                                    shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    elevation: 15,
                                                    child: Container(
                                                    child: ListView(
                                                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                        shrinkWrap: true,
                                                        children: <Widget>[
                                                        Center(child: const Text('Jenis Kegiatan Belum Dipilih' + '\n',
                                                            style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 20))),
                                                        // TODO: Munculkan informasi yang didapat dari form
                                                        TextButton(
                                                            onPressed: () {
                                                            Navigator.pop(context);
                                                            },
                                                            child: Text('Kembali'),
                                                        ), 
                                                        ],
                                                    ),
                                                    ),
                                                );
                                                },
                                            );
                                        }
                                    }
                                },
                            ),
                        ],
                        ),
                    ),
                ),
            ),
        );
    }
}