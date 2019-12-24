import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class OptionalParameter extends StatefulWidget {
  @override
  _OptionalParameterState createState() => _OptionalParameterState();
}

class _OptionalParameterState extends State<OptionalParameter> {
  String var1 = '''
// panggil function hitungLuas.
hitungLuas(nilaiA: 3, nilaiB: 10);
  ''';
  String var2 = '''
void hitungLuas({int nilaiA, int nilaiB}) {...}
  ''';
  String var3 = '''
// parameter nilaiB harus memiliki nilai
void hitungLuas({int nilaiA, @required int nilaiB}) {...}
  ''';
  String var4 = '''
int berhitung(int nilaiA, int nilaiB, [int nilaiC]) {
  int hasil;
  if (nilaiC != null) {
    hasil = nilaiA + nilaiB + nilaiC;
  } else {
    hasil = nilaiA + nilaiB;
  }
  return hasil;
}
  ''';
  String var5 = '''
berhitung(3, 20); // outputnya adalah 23
  ''';
  String var6 = '''
berhitung(3, 20, 2); // outputnya adalah 25
  ''';
  String var7 = '''
void hitungLuas({int nilaiA, int nilaiB = 10}) {...}
berhitung(3); // outputnya adalah 13
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
          child: Text("Optional Parameter",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Optional parameter adalah parameter yang tidak wajib memiliki nilai, dan parameter ini bisa menampilkan nama parameter tersebut"),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Nama Parameter", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Ketika memanggil function, kamu bisa panggila spesifik nama parameter menggunakan namaParam: isiParam. contoh:"),
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
          child: Text("Ketika mendefinisikan sebuah function, gunakan {param1, param2, ...} untuk nama parameter yang spesifik:"),
        ),
        HighlightView(
          var2,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Meskipun pemberian nama parameter termasuk jenis opsional atau tidak wajib memiliki nilai, kamu masih tetap bisa memberikan nilai parameter wajib. yaitu menggunakan anotasi @required, sebagai contoh:"),
        ),
        HighlightView(
          var3,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Posisi Parameter", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Membungkus parameter function dengan [] (kurung siku), menandakan bahwa opsional parameter tanpa memiliki nama, contoh:"),
        ),
        HighlightView(
          var4,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Contoh pemanggilan function tanpa optional parameter:"),
        ),
        HighlightView(
          var5,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Contoh pemanggilan function dengan optional parameter:"),
        ),
        HighlightView(
          var6,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Nilai Default Parameter", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Kamu bisa menggunakan = (sama dengan) untuk memberi nilai default ke parameter function. contoh:"),
        ),
        HighlightView(
          var7,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Optional Parameter"),
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
