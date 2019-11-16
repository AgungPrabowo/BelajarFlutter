import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class ListTipeData extends StatefulWidget {
  @override
  _ListTipeDataState createState() => _ListTipeDataState();
}

class _ListTipeDataState extends State<ListTipeData> {
  String var1 = '''var list = [1, 2, 3];''';
  String var2 = '''
var list = [1, 2, 3];
print(list.length == 3); // true
print(list[1] == 2); // true

list[1] = 1;
print(list[1] == 1); // true
''';
  String var3 = '''
var list = [1, 2, 3];
var list2 = [0, ...list];
print(list2.length == 4); // true
print(list2); // [0, 1, 2, 3]
''';
  String var4 = '''
var list;
var list2 = [0, ...?list];
var list3 = [0, ...list];
print(list2.length == 1); // true
print(list3.length == 1); // error
''';
  String var5 = '''
var login = true;
var menu = [
  'Home',
  'Produk',
  if (!login) 'Login',
  if (login) 'Logout'
];
print(menu); // [Home, Produk, Logout]
''';
  String var6 = '''
var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#\$i'
];
print(listOfStrings[1] == '#1'); // true
print(listOfStrings); // [#0, #1, #2, #3]
''';
TextStyle textStyle = TextStyle(fontFamily: "My awesome monospace font", fontSize: 14);
  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text("List",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
              "Seperti yang kita ketahui list dalam pemrograman lain biasanya di sebut sebagai array, jadi dalam pemrograman dart list itu merupakan kumpulan data untuk menyimpan lebih dari satu nilai atau banyak nilai dalam suatu variable."),
        ),
        HighlightView(
          var1,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
        Container(
          color: Colors.green[50],
          padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text("Catatan:", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("List juga memiliki tipe data, seperti List<int>. Jika kamu menambahkan nilai selain integer maka akan terjadi error."),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text("Sama halnya array, urutan index di List diawali dari nilai 0."),
        ),
        HighlightView(
          var2,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text("Dart versi 2.3 sudah tersedia operator Spread (...) dan operator null-aware Spread (...?), operator Spread berfungsi untuk menambahkan beberapa data ke dalam list."),
        ),
        HighlightView(
          var3,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text("Jika variable list spread kemungkinan bisa bernilai null, maka kamu perlu operator null-aware spread (...?). Operator tersebut akan menambahkan nilai jika variable list tidak null, jika tidak menggunakan operator tersebut akan terjadi error."),
        ),
        HighlightView(
          var4,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text("Dart versi 2.3 tersedia List if dan List for, dimana kamu bisa menggunakan operator (if) dan operator (for) di dalam List. seperti contoh dibawah ini:"),
        ),
        HighlightView(
          var5,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Text("Dibawah ini adalah contoh penggunaan List for untuk mengolah data di dalam List."),
        ),
        HighlightView(
          var6,
          language: "dart",
          theme: githubTheme,
          padding: EdgeInsets.all(12),
          textStyle: textStyle,
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: SingleChildScrollView(
        child: content,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 50),
      ),
    );
  }
}
