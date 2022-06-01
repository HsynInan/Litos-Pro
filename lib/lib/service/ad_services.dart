import 'package:admob_flutter/admob_flutter.dart';
// import 'package:admob_flutter_example/extensions.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firebaseadmob.dart';

class BannerReklam extends StatefulWidget {
  BannerReklam({Key key}) : super(key: key);

  @override
  _BannerReklamState createState() => _BannerReklamState();
}

class _BannerReklamState extends State<BannerReklam> {
  final ams = AdMobService();
  bool initialized = false;
  @override
  void initState() {
    super.initState();
    Admob.initialize();
    initialized = true;
  }

  @override
  Widget build(BuildContext context) {
    return AdmobBanner(
        adUnitId: ams.getBannerAdId(), adSize: AdmobBannerSize.BANNER);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
