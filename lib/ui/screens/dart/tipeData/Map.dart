import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  String var1 =
  '''
var hewan = {
  // Key:    Value
  'satu': 'kuda',
  'dua': 'kambing',
  'tiga': 'kupu-kupu'
};

var planet = {
  2: 'mars',
  10: 'bumi',
  18: 'venus',
};
  ''';
  String var2 = 
  '''
var hewan = Map();
  hewan['satu'] = 'kuda';
  hewan['dua'] = 'kambing';
  hewan['tiga'] = 'kupu-kupu';

var planet = Map();
  planet[2] = 'mars';
  planet[10] = 'bumi';
  planet[18] = 'venus';
  ''';
  String var3 = 
  '''
var hewan = {'satu': 'kuda'};
  print(hewan); // {satu: kuda}
  hewan['dua'] = 'kambing';
  print(hewan); // {satu: kuda, dua: kambing}
  ''';
  String var4 = 
  '''
var hewan = {'satu': 'kuda', 'dua': 'kambing'};
  print(hewan['satu']); // kuda
  ''';
  String var5 = 
  '''
var hewan = {'satu': 'kuda', 'dua': 'kambing'};
  print(hewan.length); // 2
  ''';
  String var6 = 
  '''
final hewanConst = const {
  'satu': 'kuda', 
  'dua': 'kambing',
  'tiga': 'kupu-kupu';
  };
  hewanConst['satu'] = 'gajah'; // error
  ''';
  TextStyle txtStyle = TextStyle(fontFamily: "My awesome monospace font", fontSize: 14);
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Map",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("Map terdiri dari key dan value, baik key maupun value bisa menggunakan tipe data apapun. Dibawah adalah contoh kode Map:"),
        ),
        HighlightView(
          var1,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          color: Colors.green[50],
          padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text("Catatan:", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Variable hewan memiliki tipe data Map<String, String> dan variable planet memiliki tipe data Map<int, String>. Jika kamu mencoba untuk memasukan nilai dengan tipe data yang tidak sesuai, akan terjadi error."),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Cara lain untuk membuat Map seperti berikut:"),
        ),
        HighlightView(
          var2,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          child: Text("Menambahkan key-value baru:"),
        ),
        HighlightView(
          var3,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          child: Text("Mengambil nilai dari Map:"),
        ),
        HighlightView(
          var4,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          child: Text("Menghitung panjang dari Map menggunakan .length:"),
        ),
        HighlightView(
          var5,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
        Container(
          child: Text("Membuat Map dengan nilai const:"),
        ),
        HighlightView(
          var6,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: txtStyle,
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
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