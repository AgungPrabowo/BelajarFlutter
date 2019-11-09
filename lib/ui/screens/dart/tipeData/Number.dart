import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  String var1 = '''
  // String -> int
  var satu = int.parse('1');
  print(satu == 1); // true

  // String -> double
  var satuKomaSatu = double.parse('1.1');
  print(satuKomaSatu == 1.1); // true

  // int -> String
  String satuString = 1.toString();
  print(satuString == '1'); // true

  // double -> String
  String piString = 3.14159.toStringAsFixed(2);
  print(piString == '3.14'); // true
  ''';
  String var2 = '''
  print((3 << 1) == 6); // 0011 << 1 == 0110
  // true

  print((3 >> 1) == 1); // 0011 >> 1 == 0001
  // true

  print((3 | 4) == 7); // 0011 | 0100 == 0111
  // true
  ''';
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Number",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Ada dua jenis number di dart yaitu int dan double:"),
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
              "Tipe data int juga bisa digunakan untuk operator bitwise, seperti shift left atau right (<<, >>), AND (&), dan OR (|)."),
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
        title: Text("Number"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(10),
        child: content,
      )),
    );
  }
}
