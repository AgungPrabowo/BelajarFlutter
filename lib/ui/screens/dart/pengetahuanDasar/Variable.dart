import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class Variable extends StatefulWidget {
  @override
  _VariableState createState() => _VariableState();
}

class _VariableState extends State<Variable> {
  String var1 = ''' var nama = 'Budi'; ''';
  String var2 = ''' String nama = 'Budi'; ''';
  String var3 = 
  ''' 
  int angka;
  print(angka == null);
  // output nya adalah true
  ''';
  String var4 = 
  ''' 
  final nickName = \"Boy\"; // tanpa tipe data
  final String nama = \"Budi\";
  ''';
  String var5 = ''' nama = 'Budi Luhur'; // Akan terjadi error ''';
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Variable",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Contoh pembuatan variable:"),
        ),
        HighlightView(
          var1,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Nilai dari variable name adalah \"Budi\" dengan tipe data String, jika kamu menggunakan tipe data var kamu bebas memberikan nilai nya, seperti int, String, maupun bool."),
        ),
        HighlightView(
          var2,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Jika kamu membuat tipe data String, nilai nya harus String. Akan terjadi error jika diberi nilai selain String, itu berlaku untuk tipe data lain, selain tipe data var."),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5, top: 10),
          child: Text("Nilai Default Variable",
              style: TextStyle(fontSize: 17.0)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Semua variable yang tidak diberi nilai akan menghasilkan nilai null."),
        ),
        HighlightView(
          var3,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5, top: 10),
          child: Text("Final",
              style: TextStyle(fontSize: 17.0)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Jika kamu ingin nilai variable tidak bisa di ganti, maka kamu gunakan final di variable mu. Sebuah variable final hanya bisa di set satu kali saja"),
        ),
        HighlightView(
          var4,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Kamu tidak bisa mengganti nilai variable final:"),
        ),
        HighlightView(
          var5,
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
        title: Text("Variable"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: content,
        ),
      ),
    );
  }
}
