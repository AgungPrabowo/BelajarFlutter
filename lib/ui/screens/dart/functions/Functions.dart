import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class FunctionsView extends StatefulWidget {
  @override
  _FunctionsViewState createState() => _FunctionsViewState();
}

class _FunctionsViewState extends State<FunctionsView> {
  String var1 = '''
bool angkaSatu(int angka) {
  return angka == 1;
}

print(angkaSatu(1)); 
// true
  ''';
  String var2 = '''
bool angkaSatu(int angka) => angka == 1;

print(angkaSatu(1)); 
// true
  ''';
  TextStyle txtStyle =
      TextStyle(fontFamily: "My awesome monospace font", fontSize: 14);
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Functions",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Dart adalah sebuah bahasa pemrograman berorientasi objek, bahkan fungsi sekalipun adalah sebuah objek yang memiliki tipe data Function. Maksutnya adalah function bisa di masukan ke dalam variable atau di lewatkan ke parameter function. dibawah adalah contoh function:"),
        ),
        HighlightView(
          var1,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Jika function hanya membutuhkan satu ekspresi, kamu bisa menggunakan function seperti ini:"),
        ),
        HighlightView(
          var2,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          color: Colors.green[50],
          padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text(
              "Catatan:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                "Syntax => adalah sama dengan syntax { return ekspresi; }."),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Functions"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 35),
          child: content,
        ),
      ),
    );
  }
}
