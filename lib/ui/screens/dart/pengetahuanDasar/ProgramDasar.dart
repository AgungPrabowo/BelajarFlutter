import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class ProgramDasar extends StatefulWidget {
  @override
  _ProgramDasarState createState() => _ProgramDasarState();
}

class _ProgramDasarState extends State<ProgramDasar> {
  String code = '''// membuat sebuah function.
printAngka(int data) {
  print('Angka \$data.'); // tampilkan ke console.
  // hasilnya adalah Angka 42
}

// function main berfungsi untuk memulai eksekusi.
main() {
  var angka = 42; // Deklarasi variable.
  printAngka(angka); // memanggil function.
}
            ''';

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "Program Dasar Dart",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            child: Text(
          "Contoh kode dart yang sering digunakan:",
        )),
        HighlightView(
          code,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle:
              TextStyle(fontFamily: "My awesome monospace font", fontSize: 14),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Penjelasan:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "// Ini adalah sebuah komentar.",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Single-line komentar.")),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "int",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
                "Tipe data angka. ada beberap tipe data juga, seperti String, List, dan bool")),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "print()",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Sebuah Function untuk menampilkan data ke console.")),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "\$data",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Memanggil nilai dari variabel data.")),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "main()",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
                "Function yang wajib ada, function ini dijalankan pertama kali ketika program dijalankan.")),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "var",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
          ),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
                "Deklarasi variabel tanpa menentukan tipe data, jadi nilai di dalamnya bisa berbagai tipe data.")),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Program Dasar"),
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
