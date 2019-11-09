import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DartPad extends StatefulWidget {
  @override
  _DartPadState createState() => _DartPadState();
}

class _DartPadState extends State<DartPad> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text("DartPad")),
      url: "https://dartpad.dartlang.org/",
    );
  }
}
