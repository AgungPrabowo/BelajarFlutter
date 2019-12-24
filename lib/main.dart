import 'package:belajar_flutter/dartPad.dart';
import 'package:belajar_flutter/ui/screens/dart/functions/AnonymousFunctions.dart';
import 'package:belajar_flutter/ui/screens/dart/functions/Functions.dart';
import 'package:belajar_flutter/ui/screens/dart/functions/OptionalParameter.dart';
import 'package:belajar_flutter/ui/screens/dart/pengetahuanDasar/ProgramDasar.dart';
import 'package:belajar_flutter/ui/screens/dart/pengetahuanDasar/Variable.dart';
import 'package:belajar_flutter/ui/screens/dart/tipeData/Boolean.dart';
import 'package:belajar_flutter/ui/screens/dart/tipeData/Map.dart';
import 'package:belajar_flutter/ui/screens/dart/tipeData/Number.dart';
import 'package:belajar_flutter/ui/screens/dart/tipeData/String.dart';
import 'package:belajar_flutter/ui/screens/dart/tipeData/List.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MaterialApp(
  title: "Belajar Flutter",
  initialRoute: "/",
  routes: {
    "/": (context) => Home(), // nanti ganti dengan splash
    "/programDasar": (context) => ProgramDasar(),
    "/variable": (context) => Variable(),
    "/number": (context) => Number(),
    "/string": (context) => StringView(),
    "/boolean": (context) => BooleanView(),
    "/list": (context) => ListTipeData(),
    "/map": (context) => MapView(),
    "/functions": (context) => FunctionsView(),
    "/optionalParameter": (context) => OptionalParameter(),
    "/AnonymousFunctions": (context) => AnonymousFunctions(),
    "/dartPad": (context) => DartPad(),
  },
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MyApp()
      },
    );
  }
}
