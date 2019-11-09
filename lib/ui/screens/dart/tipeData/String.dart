import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class StringView extends StatefulWidget {
  @override
  _StringViewState createState() => _StringViewState();
}

class _StringViewState extends State<StringView> {
  String var1 =
  '''
  var s1 = 'Menggabungkan '
      'string'
      " masih bisa dijalankan walaupun pindah baris.";
  print(s1 == 'Menggabungkan string masih bisa dijalankan walaupun ''pindah baris.');
  // true

  var s2 = 'Operator + ' + 'String.';
  print(s2 == 'Operator + String.');
  // true
  ''';
  String var2 = 
  '''
var s1 = \'\'\'
Kamu bisa buat
multi-line strings seperti ini.
\'\'\';

var s2 = \"\"\"Ini juga
multi-line string.\"\"\";
  ''';
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("String",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Kamu bisa menggabungkan string menggunakan operator +:"),
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
          child: Text("Cara lain untuk membuat multi-line string: menggunakan tiga kutip, tunggal atau ganda kutipan:"),
        ),
        HighlightView(
          var2,
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
        title: Text("String"),
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
