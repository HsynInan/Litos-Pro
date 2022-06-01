import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Dokuz/Dokuz.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/On/on.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Onbir/onbir.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Oniki/oniki.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/tema.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_konu_anlat%C4%B1m%C4%B1.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_widget.dart';

import 'package:url_launcher/url_launcher.dart';
import 'hakkinda.dart';

class KonuAnlatimi extends StatefulWidget {
  _KonuAnlatimiState createState() => _KonuAnlatimiState();
}

class _KonuAnlatimiState extends State<KonuAnlatimi> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DarkLightTheme(scaffoldKey: _scaffoldKey);
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  /*List<String> phrases = [
    'Kendini bilmek, tüm bilgeliğin başlangıcıdır.\nAristoteles',
    'Ben bilmediğimi bildiğim için, öteki insanlardan akıllıyım.\nSokrates',
    'Mantık sizi A noktasından B noktasına götürür. Hayal gücü ise her yere.\nAlbert Einstein',
    'Yüksek bir hedefe giderken, size karşı olan insanların üstesinden gelmeniz gerekir!',
    'Başka bir hedef belirlemek ve yeni rüyalarını gerçekleştirmek için asla çok geç değil!',
    'Bilgi sermayemdir, bilim silahımdır, sabır giysimdir, yetinmek en üstün kazancımdır.\nSeneca',
    'Hayat, kendini bulmakla ilgili değildir; kendini yaratmakla ilgilidir. \nGeorge Bernard Shaw',
    'Düşünmeden bir gün bile geçiremediğiniz bir şeyden asla vazgeçmeyin. \nWinston Churchill',
    'Geçmiş ne kadar zor olursa olsun, her zaman yeniden başlayabilirsiniz.”\nBuda',
    'Her başarı, deneme kararıyla başlar.”\nJohn F. Kennedy',
    'Başlangıç, işin en önemli kısmıdır.\nPlato',
    'Yarın sabah, bugünden daha erken kalk ve elinden gelenin en iyisini yap.\nJoan of Arc',
    'Bizim seçtiklerimiz, gerçekte ne olduğumuzu gösteren, yeteneklerimizden çok daha fazlası.\nJK Rowling',
    'Yerinde duran, geriye gidiyor demektir… İleri, daima ileri!\nMustafa Kemal Atatürk',
    'Bazı insanlar yağmuru hisseder, diğerleri ise sadece ıslanır.\nBob Marley',
    'Girmeye korktuğun mağara, umduğun hazineyi saklıyor olabilir.\nJoseph Campbell',
    'Önemli olan başkalarının düşündüğü büyük şeylerden ziyade; küçük de olsa kendi düşündüklerindir.\nHaruki Murakami',
    'Yarınlar yorgun ve bezgin insanlara değil, rahatlarını terk edebilen gayretli insanlara aittir.\nMarcus Tullius Cicero',
    'İlk önce yapmaktan en çok kaçındığınız şeyi yapın.\nClifford Cohen',
    'Kendinizi adar ve kararlılıkla hareket ederseniz, istediğiniz her şeyin olmasını sağlayabilirsiniz.\nTony Robbins',
    'Dünya üzerinde büyük bir etki yaratabilmek için sıfırdan başlamak zorunda değilsiniz.\nJack Dorsey',
    'Aşılmasına imkan olmayan hiçbir duvar yoktur.\nAnton Çehov',
    'Binlerce kilometrelik bir yolculuk bile, tek bir adımla başlamak zorundadır.\nLao Tzu',
    'Bulunduğunuz yerden memnun değilseniz, yerinizi değiştirin. Ağaç değilsiniz.\nJim Rohn',
    'Başarı son değildir, başarısızlık da ölümcül değildir. Önemli olan şey devam etme cesaretidir.\nWinston Churchill',
    'Erteleme korkunun tembel kuzenidir. Bir şey hakkında kaygı hissettiğimizde onu erteleriz.\nNoelle Hancock',
    'Bugünü boşa harcayan biri olarak hangi hakla yarından bir şeyler isterim?\ nAlain-Fournier',
    'Eğer hayatta bir yere gelmek istiyorsanız, -yarın-ın en işe yaramaz kelime olduğunu keşfedin.\nJose N. Harris',
    'Sadece, öldüğünüzde yarım kalmasını istediğiniz işleri yarına erteleyin.\nPablo Picasso',
    'Vakit öldürmek dışında bir şey yapın. Çünkü vakit sizi öldürüyor.\nPaulo Coelho',
    'Bundan bir yıl sonra kendinizi -Keşke o gün başlasaydım.- derken bulabilirsiniz.\nKaren Lamb',
    'Belirsizliği, tutarsızlığı, çelişkiyi, kararsızlığı kucaklamaya istekli ol.\nLeonardo da Vinci',
    'Hiç durmadığınız sürece, ne kadar yavaş gittiğinizin bir önemi yok.\nKonfüçyüs',
    'Mutlu olmanın iki yolu var: Ya isteklerinizi azaltacaksınız ya da imkanlarınızı zorlayacaksınız.\nFyodor Dostoyevski',
    'Yapmadığınız hemen hemen her şey, korkunun, çekingenliğin veya Neden olmasın? sorusunu sormayışınızdan kaynaklanır.\nSeth Godin',
    'Bir sonraki tatilin ne zaman olduğunu merak etmek yerine, kaçmanı gerektirmeyen bir hayat kurmalısın belki de.\nSeth Godin',
    'Bir şeye başlayıp başarısız olmaktan daha kötü tek şey hiçbir şeye başlamamaktır.\nSeth Godin',
    'Hayatımı sadece ben değiştirebilirim. Kimse benim için bunu yapmaz!\nCarol Burnett',
    'Hayatın %10 u sana olanların, %90 ı ise buna nasıl cevap verdiğinden ibarettir.',
    'Umutsuz durumlar yoktur, umutsuz insanlar vardır. Ben hiçbir zaman umudumu yitirmedim.\nMustafa Kemal Atatürk',
    'Eğer bir gün benim sözlerim bilimle ters düşerse bilimi seçin.\nMustafa Kemal Atatürk',
    'Bir milletin medeniyetini ölçmek istiyor musunuz? Kadınlarına nasıl muamele edildiğine bakınız.\nMustafa Kemal Atatürk',
    'Hayatınızın başlangıcından değil ama finalinden sorumlu olacaksınız.\nÜstün Dökmen',
    'Olmak ya da olmamak işte bütün mesele bu.\nWilliam Shakespeare',
    'Zorluklarla karşılaşmak istemeyenler, felaketlere layıktır.\nLucius Annaeus Seneca',
    'Hata yapmayan birisi hiçbir şey yapmayan birisidir.\nTheodore Roosevelt',
    'Sizi yıpratacak olan tırmanmaya çalıştığınız dağ değildir; ayakkabınızdaki çakıl taşlarıdır.\nMuhammed Ali',
    'Çalışma olmadan yetenek hiçbir şeydir.\nCristiano Ronaldo',
    'Beni öldürmeyen acı güçlendirir.\nNietzsche',
    'Hayatta sahip olduğunuz şeyler, istemeye cesaretiniz olduğu şeylerdir.\nOprah Winfrey',
    'Diğer herkes gibi olacaksan dünya üzerinde olmanın anlamı nedir?\nArnold Schwarzenegger',
    'Zihnin senin sınırındır. Zihnin, bir şeyi yapabileceğine inandığı sürece başarabilirsin. Kendine %100 inanmalısın.\nArnold Schwarzenegger',
    'Siz kendinize güvenmezken insanlar neden size güvensinler?\nRobert Downey Jr',
    'En büyük risk, hiç risk almamaktır. Değişen dünyada başarısız olması kesin olan bir strateji varsa o da risk almamaktır.\nMark Zuckerberg',
    'Yetenek, sofra tuzundan daha ucuzdur. Başarılı insanları, yetenekli insanlardan ayıran özellik çok çalışmalarıdır.\nStephen King',
    'Gelecek, bugünden hazırlananlara aittir.\nMalcolm X',
    'Yenilgi bir düşünce biçimidir; yenilgi bir gerçeklik olarak kabul edilmedikçe kimse yenilmiş değildir.\nBruce Lee',
    'En korkutucu an, başlamadan hemen öncedir her zaman.\nStephen King',
    'Sadece şunu hatırlayın: -Düşlerinizi gerçekleştirmeniz imkansızdır- diyenler, zaten kendi düşlerinden vazgeçmiş insanlardır.\nGrant Cardone',
    'Her başarı hikayesinde, cesur kararlar almış birini bulacaksın.\nPeterF.Drucker',
    'Peşinden gidecek cesaretiniz varsa, bir gün bütün hayalleriniz gerçek olabilir.\nWalt Disney',
    'Hayatta kazanmadan önce, zihninizde kazanmak zorundasınız.\nJohn Addison',
    'Mum olmak kolay değildir,ışık saçmak için önce yanmak gerek.\nMevlana',
    'Kendi omuzuna tırman, başka nasıl yükselebilirsin ki?\nNietzche',
    'Gerçekte ne olduğumuzu gösteren yeteneklerimiz değil, seçimlerimizdir.\nAlbus Dumbledore',
    'Sorgulanmayan yaşam yaşanmaya değer değildir.\nSokrates',
    'Ne kadar bilirsen bil, söylediklerin karşındakinin anlayabileceği kadardır.\nMevlana',
    'Şu an içinizde, asla hayal edemeyeceğiniz şeyleri yapma gücü var.\nMaxwell Maltz',
    'Bugün yaptıklarınız, yarınlarınızı iyileştirebilir.',
  ];*/

  @override
  void initState() {
    // locator<PushNotificationService>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget._scaffoldKey,
      appBar: AppBar(
        /*   title: Center(
          child: Text(
            "Ders Notlarım",
            style: TextStyle(
                fontFamily: "Raleway",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),*/
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        actions: [
          /*   IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchView()));
              }),*/

          IconButton(
              color: Colors.white,
              icon: Image.asset(
                "assets/dersicon/moon.png",
                color: Colors.white,
                width: 22,
                height: 22,
              ),
              onPressed: () {
                currentTheme.toggleTheme();
              }),
          SizedBox(
            width: 4,
          ),

          /* Switch(
              focusColor: Colors.black,
              activeThumbImage: AssetImage("assets/dersicon/moons.png"),
              inactiveThumbImage: AssetImage("assets/dersicon/moon.png"),
              hoverColor: Colors.black,
              inactiveThumbColor: Colors.grey.shade500,
              value: _light,
              onChanged: (state) {
                setState(() {
                  _light = state;
                });
              }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/acık.png",
                width: 54,
                height: 54,
              ),
            )*/
        ],
      ),
      drawer: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Drawer(
              child: Container(
                color: Theme.of(context).accentColor,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        DrawerHeader(
                          child: Image.asset(
                            'assets/dersicon/arka2.png',
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        ListTile(
                          title: Text(
                            "Web Sitemiz",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                            ),
                          ),
                          leading: Icon(Icons.language, color: Colors.white),
                          onTap: () {
                            _urlAc('https://www.dersnotlarim.net/');
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        /* ListTile(
                            title: Text(
                              "Diğer Uygulamalar",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                              ),
                            ),
                            leading:
                                Icon(Icons.devices_other, color: Colors.white),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DigerUygulamalar()));
                            }),
                        Divider(
                          color: Colors.white,
                        ),*/
                        ListTile(
                          title: Text(
                            "Hakkımızda",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                            ),
                          ),
                          leading: Icon(Icons.wrap_text, color: Colors.white),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Hakkinda()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        /*     ListTile(
                          title: Text(
                            "Ayarlar",
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Icon(Icons.settings, color: Colors.white),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Ayarlarim()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),*/
                        ListTile(
                          title: Text(
                            "Değerlendir/Puan Ver!",
                            style: TextStyle(
                                fontFamily: "Raleway", color: Colors.white),
                          ),
                          leading: Icon(Icons.thumb_up, color: Colors.white),
                          onTap: () {
                            _urlAc(
                                'https://play.google.com/store/apps/details?id=com.viennasoftdersnotlarim.lesson_aplication');
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        ListTile(
                          title: Text(
                            "Arkadaşına Öner!",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                            ),
                          ),
                          leading: Icon(Icons.share, color: Colors.white),
                          onTap: () {
                            paylas();
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * .72,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                "Bizi sosyal medya hesaplarımızdan takip edin!",
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Material(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _urlAc(
                                          'https://www.facebook.com/litosapp');
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/dersicon/facebook.png",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _urlAc(
                                          'https://www.instagram.com/litos_app/');
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/dersicon/instagram.png",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _urlAc('https://twitter.com/litosapp');
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/dersicon/twitter.png",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _urlAc('https://t.me/litos_app');
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/dersicon/telegram.png",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _urlAc(
                                          'https://www.youtube.com/channel/UCfcECZNlHLqCA2Qp2sRFK3g');
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.asset(
                                          "assets/dersicon/youtube2.png",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48),
                  bottomRight: Radius.circular(48),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ders Notlarım",
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          /* Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              '${phrases.elementAt(Random().nextInt(phrases.length))}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48),
                          topRight: Radius.circular(48),
                          bottomLeft: Radius.circular(48),
                          bottomRight: Radius.circular(48),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  DokuzKonu()));
                                    },
                                    child: SinifSecimiKonuAnlatimi(
                                      //  resim: "dokuz.png",
                                      sinif: "9. Sınıf",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  OnDersler()));
                                    },
                                    child: SinifSecimiKonuAnlatimi(
                                      // resim: "on.png",
                                      sinif: "10. Sınıf",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  OnbirDersler()));
                                    },
                                    child: SinifSecimiKonuAnlatimi(
                                      // resim: "onbir.png",
                                      sinif: "11. Sınıf",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  OnikiDersler()));
                                    },
                                    child: SinifSecimiKonuAnlatimi(
                                      // resim: "oniki.png",
                                      sinif: "12. Sınıf",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //      BannerReklam(),
        ],
      ),
    );
  }

  Future<void> paylas() async {
    await FlutterShare.share(
        title: "Paylaş",
        text: "Bu linkten uygulamamızı indirebilirsiniz.",
        linkUrl:
            "https://play.google.com/store/apps/details?id=com.viennasoftdersnotlarim.lesson_aplication",
        chooserTitle: "Uygulamayı paylaş");
  }

  Future _urlAc(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      debugPrint('gönderdiğin linki açamıyorum');
    }
  }
}
