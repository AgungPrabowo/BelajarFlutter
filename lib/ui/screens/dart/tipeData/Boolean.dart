import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class BooleanView extends StatefulWidget {
  @override
  _BooleanViewState createState() => _BooleanViewState();
}

class _BooleanViewState extends State<BooleanView> {
  String var1 = '''
// Periksa sebuah string kosong.
var nama = '';
print(nama.isEmpty); // true

// Cek nilai variable adalah 0.
var angka = 0;
print(angka <= 0); // true

// Cek variable bernilai null.
var unicorn;
print(unicorn == null); // true

// Cek nilai variable  NaN.
var hitung = 0 / 0;
print(hitung.isNaN); // true

// Cek nilai variable sama dengan 9.
var tambah = 0 + 9;
print(tambah == 8); // false
  ''';
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Boolean",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Penulisan boolean cukup sederhana, karena hanya memiliki 2 nilai, yakni true atau false. Berikut adalah contoh penulisan tipe data boolean:"),
        ),
        HighlightView(
          var1,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Boolean"),
      ),
      body: SingleChildScrollView(
        child: content,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
