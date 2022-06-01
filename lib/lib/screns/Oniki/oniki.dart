import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/ders_widget.dart';

import 'onikiKonuDetayPage.dart';

class OnikiDersler extends StatefulWidget {
  const OnikiDersler({Key key}) : super(key: key);

  @override
  _OnikiDerslerState createState() => _OnikiDerslerState();
}

class _OnikiDerslerState extends State<OnikiDersler> {
  @override
  Widget build(BuildContext context) {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "edebiyat",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "matematik",
                              )));
                },
                child: DersWidget(
                  dersName: "Matematik",
                  resim: "matematik2.png",
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "fizik",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "kimya",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "biyoloji",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "inkilaptarihi",
                              )));
                },
                child: DersWidget(
                  dersName: "T.C. İnkılap Tarihi ve Atatürkçülük",
                  resim: "inkilap3.png",
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "cagdastürktarihi",
                              )));
                },
                child: DersWidget(
                  dersName: "Çağdaş Türk ve Dünya Tarihi",
                  resim: "tarihs2.png",
                ),
              ),

              Divider(),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "cografya",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "ingilizce",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "mantık",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (contex) => OnikiKonuDetayPage(
                                jsonName: "dinkulturu",
                              )));
                },
                child: DersWidget(
                  dersName: "Din Kültürü",
                  resim: "din1.png",
                ),
              ),
              BannerReklam(),

              //   Divider(),
              //                 GestureDetector(
              //     splashColor: Colors.grey.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (contex) => OnikiKonuDetayPage(
              //                     jsonName: "isletme",
              //                   )));
              //     },
              //     child: DersWidget(
              //       dersName: "İşletme",
              //       resim: "team.png",
              //     ),
              //   ),
              //   Divider(),
              //                 GestureDetector(
              //     splashColor: Colors.grey.shade50,
              //     borderRadius: BorderRadius.circular(12),
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (contex) => OnikiKonuDetayPage(
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
