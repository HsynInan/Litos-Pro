import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/ders_widget.dart';

import 'onbirSoruDetayPage.dart';

class OnbirDerslerSoru extends StatefulWidget {
  const OnbirDerslerSoru({Key key}) : super(key: key);

  @override
  _OnbirDerslerSoruState createState() => _OnbirDerslerSoruState();
}

class _OnbirDerslerSoruState extends State<OnbirDerslerSoru> {
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
          "11.Sınıf Testler",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "edebiyat",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "edebiyat",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "matematik1",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "matematik",
                              )));
                },
                child: DersWidget(
                  dersName: "Temel Düzey Matematik",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "matematik2",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "matematik2",
                              )));
                },
                child: DersWidget(
                  dersName: "İleri Düzey Matematik",
                  resim: "matematik1.png",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "fizik",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "fizik",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "kimya",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "kimya",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "biyoloji",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "biyoloji",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "tarih",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "tarih",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "cografya",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "cografya",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "ingilizce",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "ingilizce",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "felsefe",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "felsefe",
                              )));
                },
                child: DersWidget(
                  dersName: "Felsefe",
                  resim: "felsefe2.png",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "sosyoloji",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "sosyoloji",
                              )));
                },
                child: DersWidget(
                  dersName: "Sosyoloji",
                  resim: "sos1.png",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "psikoloji",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "psikoloji",
                              )));
                },
                child: DersWidget(
                  dersName: "Psikoloji",
                  resim: "psiko1.png",
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
                          builder: (contex) => OnbirSoruDetayPage(
                                jsonName: "dinkulturu",
                                testListesiYolu: "onbir",
                                testListesiYoluderleri: "din",
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
      // bottomNavigationBar: Ads_services(),
    );
  }
}
