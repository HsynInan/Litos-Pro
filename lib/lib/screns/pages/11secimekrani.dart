import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/locator.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Dokuz/Dokuz.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Dokuz/test_incele.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/DokuzSoru/DokuzSoru.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/On/on.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/OnSoru/OnSoru.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Onbir/onbir.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/OnbirSoru/Onbirsoru.dart';

import 'package:onikincisinif12_soruvedersnotlari/lib/screns/Oniki/oniki.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/kazan%C4%B1mtestleri.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/screns/pages/tema.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/push_notification_service.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f2_widget.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_konu_anlat%C4%B1m%C4%B1.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/s%C4%B1n%C4%B1f_widget.dart';

import 'package:url_launcher/url_launcher.dart';
import 'konuanlatimi.dart';
import 'dokuzsorudersleri.dart';
import 'digeruygulamalar.dart';
import 'hakkinda.dart';

class OnbirSecimEkrani extends StatefulWidget {
  _OnbirSecimEkraniState createState() => _OnbirSecimEkraniState();
}

class _OnbirSecimEkraniState extends State<OnbirSecimEkrani> {
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
    'Kendini bilmek, t??m bilgeli??in ba??lang??c??d??r.\nAristoteles',
    'Ben bilmedi??imi bildi??im i??in, ??teki insanlardan ak??ll??y??m.\nSokrates',
    'Mant??k sizi A noktas??ndan B noktas??na g??t??r??r. Hayal g??c?? ise her yere.\nAlbert Einstein',
    'Y??ksek bir hedefe giderken, size kar???? olan insanlar??n ??stesinden gelmeniz gerekir!',
    'Ba??ka bir hedef belirlemek ve yeni r??yalar??n?? ger??ekle??tirmek i??in asla ??ok ge?? de??il!',
    'Bilgi sermayemdir, bilim silah??md??r, sab??r giysimdir, yetinmek en ??st??n kazanc??md??r.\nSeneca',
    'Hayat, kendini bulmakla ilgili de??ildir; kendini yaratmakla ilgilidir. \nGeorge Bernard Shaw',
    'D??????nmeden bir g??n bile ge??iremedi??iniz bir ??eyden asla vazge??meyin. \nWinston Churchill',
    'Ge??mi?? ne kadar zor olursa olsun, her zaman yeniden ba??layabilirsiniz.???\nBuda',
    'Her ba??ar??, deneme karar??yla ba??lar.???\nJohn F. Kennedy',
    'Ba??lang????, i??in en ??nemli k??sm??d??r.\nPlato',
    'Yar??n sabah, bug??nden daha erken kalk ve elinden gelenin en iyisini yap.\nJoan of Arc',
    'Bizim se??tiklerimiz, ger??ekte ne oldu??umuzu g??steren, yeteneklerimizden ??ok daha fazlas??.\nJK Rowling',
    'Yerinde duran, geriye gidiyor demektir??? ??leri, daima ileri!\nMustafa Kemal Atat??rk',
    'Baz?? insanlar ya??muru hisseder, di??erleri ise sadece ??slan??r.\nBob Marley',
    'Girmeye korktu??un ma??ara, umdu??un hazineyi sakl??yor olabilir.\nJoseph Campbell',
    '??nemli olan ba??kalar??n??n d??????nd?????? b??y??k ??eylerden ziyade; k??????k de olsa kendi d??????nd??klerindir.\nHaruki Murakami',
    'Yar??nlar yorgun ve bezgin insanlara de??il, rahatlar??n?? terk edebilen gayretli insanlara aittir.\nMarcus Tullius Cicero',
    '??lk ??nce yapmaktan en ??ok ka????nd??????n??z ??eyi yap??n.\nClifford Cohen',
    'Kendinizi adar ve kararl??l??kla hareket ederseniz, istedi??iniz her ??eyin olmas??n?? sa??layabilirsiniz.\nTony Robbins',
    'D??nya ??zerinde b??y??k bir etki yaratabilmek i??in s??f??rdan ba??lamak zorunda de??ilsiniz.\nJack Dorsey',
    'A????lmas??na imkan olmayan hi??bir duvar yoktur.\nAnton ??ehov',
    'Binlerce kilometrelik bir yolculuk bile, tek bir ad??mla ba??lamak zorundad??r.\nLao Tzu',
    'Bulundu??unuz yerden memnun de??ilseniz, yerinizi de??i??tirin. A??a?? de??ilsiniz.\nJim Rohn',
    'Ba??ar?? son de??ildir, ba??ar??s??zl??k da ??l??mc??l de??ildir. ??nemli olan ??ey devam etme cesaretidir.\nWinston Churchill',
    'Erteleme korkunun tembel kuzenidir. Bir ??ey hakk??nda kayg?? hissetti??imizde onu erteleriz.\nNoelle Hancock',
    'Bug??n?? bo??a harcayan biri olarak hangi hakla yar??ndan bir ??eyler isterim?\ nAlain-Fournier',
    'E??er hayatta bir yere gelmek istiyorsan??z, -yar??n-??n en i??e yaramaz kelime oldu??unu ke??fedin.\nJose N. Harris',
    'Sadece, ??ld??????n??zde yar??m kalmas??n?? istedi??iniz i??leri yar??na erteleyin.\nPablo Picasso',
    'Vakit ??ld??rmek d??????nda bir ??ey yap??n. ????nk?? vakit sizi ??ld??r??yor.\nPaulo Coelho',
    'Bundan bir y??l sonra kendinizi -Ke??ke o g??n ba??lasayd??m.- derken bulabilirsiniz.\nKaren Lamb',
    'Belirsizli??i, tutars??zl??????, ??eli??kiyi, karars??zl?????? kucaklamaya istekli ol.\nLeonardo da Vinci',
    'Hi?? durmad??????n??z s??rece, ne kadar yava?? gitti??inizin bir ??nemi yok.\nKonf????y??s',
    'Mutlu olman??n iki yolu var: Ya isteklerinizi azaltacaks??n??z ya da imkanlar??n??z?? zorlayacaks??n??z.\nFyodor Dostoyevski',
    'Yapmad??????n??z hemen hemen her ??ey, korkunun, ??ekingenli??in veya Neden olmas??n? sorusunu sormay??????n??zdan kaynaklan??r.\nSeth Godin',
    'Bir sonraki tatilin ne zaman oldu??unu merak etmek yerine, ka??man?? gerektirmeyen bir hayat kurmal??s??n belki de.\nSeth Godin',
    'Bir ??eye ba??lay??p ba??ar??s??z olmaktan daha k??t?? tek ??ey hi??bir ??eye ba??lamamakt??r.\nSeth Godin',
    'Hayat??m?? sadece ben de??i??tirebilirim. Kimse benim i??in bunu yapmaz!\nCarol Burnett',
    'Hayat??n %10 u sana olanlar??n, %90 ?? ise buna nas??l cevap verdi??inden ibarettir.',
    'Umutsuz durumlar yoktur, umutsuz insanlar vard??r. Ben hi??bir zaman umudumu yitirmedim.\nMustafa Kemal Atat??rk',
    'E??er bir g??n benim s??zlerim bilimle ters d????erse bilimi se??in.\nMustafa Kemal Atat??rk',
    'Bir milletin medeniyetini ??l??mek istiyor musunuz? Kad??nlar??na nas??l muamele edildi??ine bak??n??z.\nMustafa Kemal Atat??rk',
    'Hayat??n??z??n ba??lang??c??ndan de??il ama finalinden sorumlu olacaks??n??z.\n??st??n D??kmen',
    'Olmak ya da olmamak i??te b??t??n mesele bu.\nWilliam Shakespeare',
    'Zorluklarla kar????la??mak istemeyenler, felaketlere lay??kt??r.\nLucius Annaeus Seneca',
    'Hata yapmayan birisi hi??bir ??ey yapmayan birisidir.\nTheodore Roosevelt',
    'Sizi y??pratacak olan t??rmanmaya ??al????t??????n??z da?? de??ildir; ayakkab??n??zdaki ??ak??l ta??lar??d??r.\nMuhammed Ali',
    '??al????ma olmadan yetenek hi??bir ??eydir.\nCristiano Ronaldo',
    'Beni ??ld??rmeyen ac?? g????lendirir.\nNietzsche',
    'Hayatta sahip oldu??unuz ??eyler, istemeye cesaretiniz oldu??u ??eylerdir.\nOprah Winfrey',
    'Di??er herkes gibi olacaksan d??nya ??zerinde olman??n anlam?? nedir?\nArnold Schwarzenegger',
    'Zihnin senin s??n??r??nd??r. Zihnin, bir ??eyi yapabilece??ine inand?????? s??rece ba??arabilirsin. Kendine %100 inanmal??s??n.\nArnold Schwarzenegger',
    'Siz kendinize g??venmezken insanlar neden size g??vensinler?\nRobert Downey Jr',
    'En b??y??k risk, hi?? risk almamakt??r. De??i??en d??nyada ba??ar??s??z olmas?? kesin olan bir strateji varsa o da risk almamakt??r.\nMark Zuckerberg',
    'Yetenek, sofra tuzundan daha ucuzdur. Ba??ar??l?? insanlar??, yetenekli insanlardan ay??ran ??zellik ??ok ??al????malar??d??r.\nStephen King',
    'Gelecek, bug??nden haz??rlananlara aittir.\nMalcolm X',
    'Yenilgi bir d??????nce bi??imidir; yenilgi bir ger??eklik olarak kabul edilmedik??e kimse yenilmi?? de??ildir.\nBruce Lee',
    'En korkutucu an, ba??lamadan hemen ??ncedir her zaman.\nStephen King',
    'Sadece ??unu hat??rlay??n: -D????lerinizi ger??ekle??tirmeniz imkans??zd??r- diyenler, zaten kendi d????lerinden vazge??mi?? insanlard??r.\nGrant Cardone',
    'Her ba??ar?? hikayesinde, cesur kararlar alm???? birini bulacaks??n.\nPeterF.Drucker',
    'Pe??inden gidecek cesaretiniz varsa, bir g??n b??t??n hayalleriniz ger??ek olabilir.\nWalt Disney',
    'Hayatta kazanmadan ??nce, zihninizde kazanmak zorundas??n??z.\nJohn Addison',
    'Mum olmak kolay de??ildir,??????k sa??mak i??in ??nce yanmak gerek.\nMevlana',
    'Kendi omuzuna t??rman, ba??ka nas??l y??kselebilirsin ki?\nNietzche',
    'Ger??ekte ne oldu??umuzu g??steren yeteneklerimiz de??il, se??imlerimizdir.\nAlbus Dumbledore',
    'Sorgulanmayan ya??am ya??anmaya de??er de??ildir.\nSokrates',
    'Ne kadar bilirsen bil, s??ylediklerin kar????ndakinin anlayabilece??i kadard??r.\nMevlana',
    '??u an i??inizde, asla hayal edemeyece??iniz ??eyleri yapma g??c?? var.\nMaxwell Maltz',
    'Bug??n yapt??klar??n??z, yar??nlar??n??z?? iyile??tirebilir.',
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
                  "Ders Notlar??m",
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
              //     padding: const EdgeInsets.only(right: 32.0),
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
                                  "Anasayfa",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    color: Colors.white,
                                  ),
                                ),
                                leading: Icon(Icons.home, color: Colors.white),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OnbirSecimEkrani()));
                                },
                              ),
                              Divider(
                                color: Colors.white,
                              ),
                              ListTile(
                                  title: Text(
                                    "Di??er Uygulamalar",
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
                                  "Hakk??m??zda",
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
                              //ayarlar butonu iste??e g??re eklenebilir.
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
                                  "Arkada????nla Payla??!",
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
                                          "??neri ve ??ikayetleriniz i??in",
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
                                          "bize ula????n!",
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
                                  "11. S??n??f",
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
                                                        OnbirDersler()));
                                          },
                                          child: SinifKodu(
                                            resim: "lesson.png",
                                            sinif: "Konu Anlat??mlar??",
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
                                            sinif: "Kazan??m Testleri",
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
        title: "Payla??",
        text: "Bu linkten uygulamam??z?? indirebilirsiniz.",
        linkUrl: "https://play.google.com/store/",
        chooserTitle: "Uygulamay?? payla??");
  }

  Future _urlAc(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      debugPrint('g??nderdi??in linki a??am??yorum');
    }
  }
}
