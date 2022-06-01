import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  const Hakkinda({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hakkımızda',
          style: TextStyle(fontFamily: "Raleway"),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Theme.of(context).buttonColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Hakkımızda",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Tüm ders notlarınız artık her zaman yanınızda. Mobil uygulamamız ile birlikte ders notlarınıza istediğiniz zaman, istediğiniz yerden ulaşabilirsiniz.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Yaptığımız bu işten oldukça keyif alıyor, öğrencilere önemli bir destek olduğunu düşünüyoruz. Her zaman öğrencilerin başarılarını art arda sıralayacağı günlerin hayalini kuruyoruz. Bu bize her şeyden çok keyif veriyor.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Türkiye’nin alanında en iyi notlarıyla hazırladığımız konu anlatımlarını ve testlerini, öğrencilerimizin en hızlı öğreneceği bir tarzda aktarıyoruz.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Şimdi seni de, derslerine çalışırken ve büyük başarılara adım atarken bizimle gülümsemeye davet ediyoruz.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Theme.of(context).buttonColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Telif",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "İçeriklerimizin neredeyse tamamı internet ortamındaki diğer kaynaklardan tamamen yönetim ekibinden izin alınarak veya kaynak belirtilerek yayınlanmasında bir problem olmadığını belirten adreslerde sağlanmaktadır. Web adresinizde yayınladığınız içerikleri uygulamamızda da paylaşmak isterseniz iletişim adreslerimizden bize ulaşabilirsiniz.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(
                    Icons.chat_outlined,
                    color: Theme.of(context).buttonColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "İletişim",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Öneri ve şikayetleriniz için hvn.games79@gmail.com” adresi ile iletişime geçebilirsiniz.",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
