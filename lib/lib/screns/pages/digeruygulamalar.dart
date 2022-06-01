import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DigerUygulamalar extends StatelessWidget {
  const DigerUygulamalar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          "Diğer Uygulamalar",
          style: TextStyle(fontFamily: "Raleway"),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 5,
              shadowColor: Colors.white54,
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  _urlAc(
                      'https://play.google.com/store/apps/details?id=com.cocuksagligi.kadinveaile');
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, bottom: 12, top: 12),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        child: Image.asset(
                          'assets/dersicon/kadın.png',
                          width: 48,
                          height: 48,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Kadin ve Aile - Çocuk Sağlığı',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Uygulamaya gitmek için dokunun',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Lato',
                                color: Theme.of(context).buttonColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context).buttonColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}

Future _urlAc(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    debugPrint('gönderdiğin linki açamıyorum');
  }
}
