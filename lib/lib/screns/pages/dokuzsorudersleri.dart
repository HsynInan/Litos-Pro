import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/sorular.dart';

import 'testlistesi.dart';

class SoruDersleri extends StatefulWidget {
  SoruDersleri({
    Key key,
  }) : super(key: key);

  @override
  _SoruDersleriState createState() => _SoruDersleriState();
}

class _SoruDersleriState extends State<SoruDersleri> {
  List<Widget> secimler = [];
  List konu;
  //final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    /*InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Kazanım Testleri",
          style: TextStyle(
            fontFamily: 'Cocon',
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/testler/dokuzdersler.json"),
            builder: (context, cevap) {
              konu = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemCount: konu == null ? 0 : konu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        /*   if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                          ReklamMiktari.ReklamSayisi =
                              ReklamMiktari.ReklamSayisi + 1;
                        } else {
                          newAdd.show(
                              anchorType: AnchorType.bottom,
                              anchorOffset: 0.0,
                              horizontalCenterOffset: 0.0);
                        }*/
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TestListesi(
                                      testListesiYolu: konu[index]
                                          ['testListesiYolu'],
                                      testListesiYoluderleri: konu[index]
                                          ['jsonadı'],
                                    )));
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white,
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            /*image: DecorationImage(
                                image: AssetImage(""),
                                fit: BoxFit.cover),*/

                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "" + konu[index]['dersadiResim'],
                                  width: 64,
                                  height: 64,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "" + konu[index]['dersadi'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
      /*  bottomNavigationBar: Container(
          color: Colors.deepOrangeAccent.shade200, child: BannerReklam()),*/
    );
  }
}
