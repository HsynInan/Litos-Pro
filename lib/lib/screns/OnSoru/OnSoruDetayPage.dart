import 'dart:convert';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/anasayfa.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/sorular.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/Count.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/firebaseadmob.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/konu_detay_widget.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/konu_widget.dart';

class OnSoruDetayPage extends StatefulWidget {
  String testListesiYolu;
  String testListesiYoluderleri;
  final String jsonName;

  OnSoruDetayPage(
      {Key key,
      this.jsonName,
      this.testListesiYolu,
      this.testListesiYoluderleri})
      : super(key: key);

  @override
  _OnSoruDetayPageState createState() => _OnSoruDetayPageState();
}

class _OnSoruDetayPageState extends State<OnSoruDetayPage> {
  List<Widget> secimler = [];
  List konu;

  // final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    /* InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();*/

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              })
        ],
        backgroundColor: Theme.of(context).accentColor,
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
          "10. Sınıf Testler",
          style: TextStyle(
            fontFamily: 'Cocon',
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(
                "assets/testler/sınıflar/${widget.testListesiYolu}/${widget.testListesiYoluderleri}/testListesi.json"),
            builder: (context, cevap) {
              konu = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemCount: konu == null ? 0 : konu.length,
                itemBuilder: (BuildContext context, int index) {
                  return /*ListTile(
                    leading: Image.asset(
                      "" + konu[index]['TestNoResim'],
                      width: 48,
                      height: 48,
                    ),

                  );*/
                      Padding(
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
                                builder: (context) => SoruCozumSayfasi(
                                      jsonAdi: konu[index]['jsonadı'],
                                      kategoriadi: konu[index]['sinifadi'],
                                      testNo: konu[index]['testNo'],
                                    )));
                      },
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         color: Theme.of(context).accentColor,
                              //         width: 1),
                              //     borderRadius: BorderRadius.circular(36)),
                              child: ListTile(
                                leading: Image.asset(
                                  "" + konu[index]['TestNoResim'],
                                ),
                                title: Text(
                                  "" + konu[index]['TestNo'],
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color),
                                ),
                                subtitle: Container(
                                  width: double.infinity,
                                  child: Text(
                                    "" + konu[index]['KonuAdi'],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context).cursorColor),
                                  ),
                                ),
                                //             width: 48,
                                //             height: 48,),),
                                // child: Material(
                                //   borderRadius: BorderRadius.all(Radius.circular(16)),
                                //   elevation: 3,
                                //   shadowColor: Colors.blue.shade200,
                                //   color: Colors.white,
                                //   child: Container(
                                //     height: 120,
                                //     decoration: BoxDecoration(
                                //       /*image: DecorationImage(
                                //           image: AssetImage(""),
                                //           fit: BoxFit.cover),*/
                                //       border: Border.all(
                                //           color: Colors.blueGrey.shade800, width: 1),
                                //       borderRadius: BorderRadius.all(Radius.circular(16)),
                                //     ),
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(8.0),
                                //       child: Row(
                                //         mainAxisAlignment: MainAxisAlignment.start,
                                //         children: [
                                //           Image.asset(
                                //             "" + konu[index]['TestNoResim'],
                                //             width: 48,
                                //             height: 48,
                                //           ),
                                //           Expanded(
                                //             child: Column(
                                //               mainAxisAlignment: MainAxisAlignment.start,
                                //               children: [
                                //                 Expanded(
                                //                   child: Text(
                                //                     "" + konu[index]['TestNo'],
                                //                     textAlign: TextAlign.center,
                                //                     maxLines: 2,
                                //                     style: TextStyle(
                                //                         fontSize: 13,
                                //                         fontWeight: FontWeight.w600,
                                //                         color: Theme.of(context)
                                //                             .textTheme
                                //                             .bodyText1
                                //                             .color),
                                //                   ),
                                //                 ),
                                //                 Expanded(
                                //                   child: Text(
                                //                     "" + konu[index]['KonuAdi'],
                                //                     textAlign: TextAlign.center,
                                //                     overflow: TextOverflow.ellipsis,
                                //                     maxLines: 1,
                                //                     style: TextStyle(
                                //                         fontSize: 14,
                                //                         fontWeight: FontWeight.w600,
                                //                         color: Theme.of(context)
                                //                             .textTheme
                                //                             .bodyText1
                                //                             .color),
                                //                   ),
                                //                 ),
                                //               ],
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Theme.of(context).buttonColor,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
      ),
      bottomNavigationBar: Container(child: BannerReklam()),
    );
  }
}
