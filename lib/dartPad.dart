import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DartPad extends StatefulWidget {
  @override
  _DartPadState createState() => _DartPadState();
}

const String testDevice = "5ACA2DB358F2857DCCA953A2DD2F1017";
class _DartPadState extends State<DartPad> {
  BannerAd _bannerAd;
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      testDevices: testDevice != null ? <String>[testDevice] : null,
      nonPersonalizedAds: true,
      keywords: <String>['Education']);

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: "ca-app-pub-6902830085354035/6432425065",
        size: AdSize.smartBanner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void initState() {  
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-6902830085354035~5633530475");
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text("DartPad")),
      url: "https://dartpad.dartlang.org/",
    );
  }
}
