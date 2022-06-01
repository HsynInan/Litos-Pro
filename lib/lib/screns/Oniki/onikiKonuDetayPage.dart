import 'dart:convert';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/anasayfa.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/konu_detay_widget.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/konu_widget.dart';

class OnikiKonuDetayPage extends StatefulWidget {
  final String jsonName;

  const OnikiKonuDetayPage({Key key, this.jsonName}) : super(key: key);

  @override
  _OnikiKonuDetayPageState createState() => _OnikiKonuDetayPageState();
}

class _OnikiKonuDetayPageState extends State<OnikiKonuDetayPage> {
  List konu;

  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Konular",
          style: TextStyle(
            fontFamily: "Raleway",
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              })
        ],
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/oniki/${widget.jsonName}.json"),
            builder: (context, cevap) {
              konu = jsonDecode(cevap.data.toString());
              return ListView.builder(
                  itemCount: konu == null ? 0 : konu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        print("" + ReklamMiktari.ReklamSayisi.toString());
                        if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                          ReklamMiktari.ReklamSayisi =
                              ReklamMiktari.ReklamSayisi + 1;
                        } else {
                          newAdd.show(
                              anchorType: AnchorType.bottom,
                              anchorOffset: 0.0,
                              horizontalCenterOffset: 0.0);
                        }

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => DetayWidget(
                                    filePath: konu[index]["filepath"],
                                    titleText: konu[index]["konuadi"],
                                    assetfilePath: "htmller12")));
                      },
                      child: KonuWidget(
                        konuName: konu[index]["konuadi"],
                      ),
                    );
                  });
            }),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Center(child: BannerReklam()),
      ),
    );
  }
}
