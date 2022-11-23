import 'package:counter_7/page/form.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/mywatchlist.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Program Counter';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Text _typeAngka = const Text('GENAP', style: TextStyle(color: Colors.red));

  void _incrementCounter() {
    setState(() {
      _counter++;
      _typeCheck(_counter);
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _typeCheck(_counter);
    });
  }

  void _typeCheck(int counter) {
    if (counter % 2 == 0) {
      _typeAngka = const Text('GENAP', style: TextStyle(color: Colors.red));
    } else {
      _typeAngka = const Text('GANJIL', style: TextStyle(color: Colors.blue));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pop(
                  context,
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
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _typeAngka,
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Stack(
              children: <Widget>[
                if (_counter > 0)
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: FloatingActionButton(
                        onPressed: _decrementCounter,
                        tooltip: "Decrement",
                        child: const Icon(Icons.remove),
                      )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            )));
  }
}
