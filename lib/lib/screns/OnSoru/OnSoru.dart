import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/ders_widget.dart';

import 'OnSoruDetayPage.dart';

class OnDerslerSoru extends StatefulWidget {
  const OnDerslerSoru({Key key}) : super(key: key);

  @override
  _OnDerslerSoruState createState() => _OnDerslerSoruState();
}

class _OnDerslerSoruState extends State<OnDerslerSoru> {
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
          "10.Sınıf Derslerim",
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "edebiyat",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "edebiyat",
                              )));
                },
                child: DersWidget(
                  dersName: "Türk Dili ve Edebiyatı",
                  resim: "edebiyat4.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "matematik",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "matematik",
                              )));
                },
                child: DersWidget(
                  dersName: "Matematik",
                  resim: "matematik2.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "fizik",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "fizik",
                              )));
                },
                child: DersWidget(
                  dersName: "Fizik",
                  resim: "atom2.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "kimya",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "kimya",
                              )));
                },
                child: DersWidget(
                  dersName: "Kimya",
                  resim: "kimyas2.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "biyoloji",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "biyoloji",
                              )));
                },
                child: DersWidget(
                  dersName: "Biyoloji",
                  resim: "bio3.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "tarih",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "tarih",
                              )));
                },
                child: DersWidget(
                  dersName: "Tarih",
                  resim: "tarih3.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "cografya",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "cografya",
                              )));
                },
                child: DersWidget(
                  dersName: "Coğrafya",
                  resim: "cog2.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "ingilizce",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "ingilizce",
                              )));
                },
                child: DersWidget(
                  dersName: "İngilizce",
                  resim: "ing1.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "felsefe",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "felsefe",
                              )));
                },
                child: DersWidget(
                  dersName: "Felsefe",
                  resim: "felsefe2.png",
                ),
              ),
              Divider(
                color: Theme.of(context).buttonColor,
                height: 2,
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
                          builder: (contex) => OnSoruDetayPage(
                                jsonName: "din",
                                testListesiYolu: "on",
                                testListesiYoluderleri: "din",
                              )));
                },
                child: DersWidget(
                  dersName: "Din Kültürü ve Ahlak Bilgisi",
                  resim: "din1.png",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(child: BannerReklam()),
    );
  }
}
