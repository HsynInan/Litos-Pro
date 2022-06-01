import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/ders_widget.dart';

import 'DokuzKonuDetayPage.dart';

class DokuzKonu extends StatefulWidget {
  DokuzKonu({Key key}) : super(key: key);

  @override
  _DokuzKonuState createState() => _DokuzKonuState();
}

class _DokuzKonuState extends State<DokuzKonu> {
  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "9.Sınıf Derslerim",
          style: TextStyle(fontFamily: "Lato"),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BannerReklam(),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "edebiyat",
                              )));
                },
                child: DersWidget(
                  dersName: "Türk Dili ve Edebiyatı",
                  resim: "edebiyat4.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "matematik",
                              )));
                },
                child: DersWidget(
                  dersName: "Matematik",
                  resim: "matematik2.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "fizik",
                              )));
                },
                child: DersWidget(
                  dersName: "Fizik",
                  resim: "atom2.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "kimya",
                              )));
                },
                child: DersWidget(
                  dersName: "Kimya",
                  resim: "kimyas2.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "biyoloji",
                              )));
                },
                child: DersWidget(
                  dersName: "Biyoloji",
                  resim: "bio3.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "tarih",
                              )));
                },
                child: DersWidget(
                  dersName: "Tarih",
                  resim: "tarih3.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "cografya",
                              )));
                },
                child: DersWidget(
                  dersName: "Coğrafya",
                  resim: "cog2.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "ingilizce",
                              )));
                },
                child: DersWidget(
                  dersName: "İngilizce",
                  resim: "ing1.png",
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                    ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                  } else {
                    newAdd.show(
                        anchorType: AnchorType.bottom,
                        anchorOffset: 0.0,
                        horizontalCenterOffset: 0.0);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => DokuzKonuDetayPage(
                                jsonName: "dinkulturu",
                              )));
                },
                child: DersWidget(
                  dersName: "Din Kültürü ve Ahlak Bilgisi",
                  resim: "din1.png",
                ),
              ),
              BannerReklam(),
            ],
          ),
        ),
      ),
    );
  }
}
