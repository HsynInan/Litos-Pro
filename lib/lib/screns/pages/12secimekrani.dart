import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/locator.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Dokuz/test_incele.dart';

import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Oniki/oniki.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/OnikiSoru/onikiSoru.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/tema.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/push_notification_service.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f2_widget.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_konu_anlat%C4%B1m%C4%B1.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_widget.dart';

import 'package:url_launcher/url_launcher.dart';
import 'dokuzsorudersleri.dart';
import 'digeruygulamalar.dart';
import 'hakkinda.dart';
import 'kazanımtestleri.dart';

class OnikiSecimEkrani extends StatefulWidget {
  _OnikiSecimEkraniState createState() => _OnikiSecimEkraniState();
}

class _OnikiSecimEkraniState extends State<OnikiSecimEkrani> {
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
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
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
                  //widget._scaffoldKey.currentState.openDrawer();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 28,
                ),
              ),
              elevation: 0,
              backgroundColor: Theme.of(context).accentColor,
              // actions: [
              //   /*   IconButton(
              //       icon: Icon(CupertinoIcons.search),
              //       onPressed: () {
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => SearchView()));
              //       }),*/
              //   IconButton(
              //     icon: Icon(
              //       Icons.language,
              //       color: Colors.white,
              //       size: 28,
              //     ),
              //     onPressed: () {
              //       _urlAc('https://www.dersnotlarim.net/');
              //     },
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.only(right: 0.0),
              //     child: IconButton(
              //         color: Colors.white,
              //         icon: Icon(Icons.bedtime),
              //         onPressed: () {
              //           currentTheme.toggleTheme();
              //         }),
              //   )
              // ],
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
                                  'assets/dersicon/cc.png',
                                  color: Colors.white70,
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
                                leading:
                                    Icon(Icons.language, color: Colors.white),
                                onTap: () {
                                  _urlAc('https://www.dersnotlarim.net/');
                                },
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              ListTile(
                                  title: Text(
                                    "Diğer Uygulamalar",
                                    style: TextStyle(
                                      fontFamily: "Raleway",
                                      color: Colors.white,
                                    ),
                                  ),
                                  leading: Icon(Icons.devices_other,
                                      color: Colors.white),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DigerUygulamalar()));
                                  }),
                              Divider(
                                color: Colors.white,
                              ),
                              ListTile(
                                title: Text(
                                  "Hakkımızda",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Colors.white,
                                  ),
                                ),
                                leading:
                                    Icon(Icons.wrap_text, color: Colors.white),
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
                              /*     
                              //ayarlar butonu isteğe göre eklenebilir.
                              ListTile(
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
                                  "Uygulamaya Puan Ver!",
                                  style: TextStyle(
                                      fontFamily: "Raleway",
                                      color: Colors.white),
                                ),
                                leading:
                                    Icon(Icons.thumb_up, color: Colors.white),
                                onTap: () {
                                  _urlAc('https://play.google.com/store/');
                                },
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              ListTile(
                                title: Text(
                                  "Arkadaşınla Paylaş!",
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
                                    padding:
                                        const EdgeInsets.only(bottom: 16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Öneri ve şikayetleriniz için",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "info@dersnotlarim.net",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Raleway",
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "bize ulaşın!",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
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
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "12. Sınıf",
                                  textAlign: TextAlign.center,
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
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (contex) =>
                                                        OnikiDersler()));
                                          },
                                          child: SinifKodu(
                                            resim: "lesson.png",
                                            sinif: "Konu Anlatımları",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (contex) =>
                                                        KazanimTestleri2()));
                                          },
                                          child: SinifKodu2(
                                            resim: "choose.png",
                                            sinif: "Kazanım Testleri",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BannerReklam(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.only(top: 50, right: 50),
              child: Banner(
                message: "PRO",
                color: Colors.black,
                location: BannerLocation.bottomStart,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> paylas() async {
    await FlutterShare.share(
        title: "Paylaş",
        text: "Bu linkten uygulamamızı indirebilirsiniz.",
        linkUrl: "https://play.google.com/store/",
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
