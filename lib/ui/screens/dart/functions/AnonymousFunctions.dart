import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class AnonymousFunctions extends StatefulWidget {
  @override
  _AnonymousFunctionsState createState() => _AnonymousFunctionsState();
}

class _AnonymousFunctionsState extends State<AnonymousFunctions> {
  String var1 = '''
var hewan = ["kambing", "kuda", "kadal"];
hewan.forEach((data) {
  print("\${hewan.indexOf(data)}: \$data");
});

// outputnya adalah
// 0: kambing
// 1: kuda
// 2: kadal
  ''';
  String var2 = '''
hewan.forEach(
  (data) => print("\${hewan.indexOf(data)}: \$data"));
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
          child: Text("Anonymous functions",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Kebanyakan function memiliki nama, seperti main() atau iniFunction(). kamu bisa juga membuat sebuah function tanpa nama, yang disebut sebagai anonymous function. atau kadang-kadang biasa disebut lambda atau closure, kamu bisa memasukan sebuah anonymous function ke dalam sebuah variabel."),
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
        title: Text("Anonymous Functions"),
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
