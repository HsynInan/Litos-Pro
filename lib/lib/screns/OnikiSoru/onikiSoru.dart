import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/ders_widget.dart';

import 'onikiSoruDetayPage.dart';

class OnikiDerslerSoru extends StatefulWidget {
  const OnikiDerslerSoru({Key key}) : super(key: key);

  @override
  _OnikiDerslerSoruState createState() => _OnikiDerslerSoruState();
}

class _OnikiDerslerSoruState extends State<OnikiDerslerSoru> {
  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "12.Sınıf Derslerim",
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "edebiyat",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "edebiyat",
                              )));
                },
                child: DersWidget(
                  dersName: "Türk Dili ve Edebiyatı",
                  resim: "edebiyat4.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "matematik",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "matematik",
                              )));
                },
                child: DersWidget(
                  dersName: "Matematik (Temel Düzey)",
                  resim: "matematik2.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "matematik2",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "matematik2",
                              )));
                },
                child: DersWidget(
                  dersName: "Matematik (İleri Düzey)",
                  resim: "matematik1.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "fizik",
                                testListesiYolu: "dokuz",
                                testListesiYoluderleri: "fizik",
                              )));
                },
                child: DersWidget(
                  dersName: "Fizik",
                  resim: "atom2.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "kimya",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "kimya",
                              )));
                },
                child: DersWidget(
                  dersName: "Kimya",
                  resim: "kimyas2.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "biyoloji",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "biyoloji",
                              )));
                },
                child: DersWidget(
                  dersName: "Biyoloji",
                  resim: "bio3.png",
                ),
              ),
              Divider(),

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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "inkilaptarihi",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "tarih",
                              )));
                },
                child: DersWidget(
                  dersName: "T.C. İnkılap Tarihi ve Dünya Tarihi",
                  resim: "tarih3.png",
                ),
              ),

              Divider(),

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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "cografya",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "cografya",
                              )));
                },
                child: DersWidget(
                  dersName: "Coğrafya",
                  resim: "cog2.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "ingilizce",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "ingilizce",
                              )));
                },
                child: DersWidget(
                  dersName: "İngilizce",
                  resim: "ing1.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "mantık",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "mantık",
                              )));
                },
                child: DersWidget(
                  dersName: "Mantık",
                  resim: "mantık1.png",
                ),
              ),
              Divider(),
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
                          builder: (contex) => OnikiSoruDetayPage(
                                jsonName: "dinkulturu",
                                testListesiYolu: "oniki",
                                testListesiYoluderleri: "din",
                              )));
                },
                child: DersWidget(
                  dersName: "Din Kültürü",
                  resim: "din1.png",
                ),
              ),
              BannerReklam(),

              //   Divider(),
              //   GestureDetector(
              //     splashColor: Colors.grey.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (contex) => OnikiSoruDetayPage(
              //                     jsonName: "isletme",
              //                   )));
              //     },
              //     child: DersWidget(
              //       dersName: "İşletme",
              //       resim: "team.png",
              //     ),
              //   ),
              //   Divider(),
              //   GestureDetector(
              //     splashColor: Colors.grey.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (contex) => OnikiSoruDetayPage(
              //                     jsonName: "ekonomi",
              //                   )));
              //     },
              //     child: DersWidget(
              //       dersName: "Ekonomi",
              //       resim: "gdp.png",
              //     ),
              //   ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: Ads_services(),
    );
  }
}
