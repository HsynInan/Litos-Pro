import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<String> phrases = [
    'Kendini bilmek, tüm bilgeliğin başlangıcıdır.\nAristoteles',
    'Ben bilmediğimi bildiğim için, öteki insanlardan akıllıyım.\nSokrates',
    'Mantık sizi A noktasından B noktasına götürür. Hayal gücü ise her yere.\nAlbert Einstein',
    'Yüksek bir hedefe giderken, size karşı olan insanların üstesinden gelmeniz gerekir!',
    'Başka bir hedef belirlemek ve yeni rüyalarını gerçekleştirmek için asla çok geç değil!',
    'Bilgi sermayemdir, bilim silahımdır, sabır giysimdir, yetinmek en üstün kazancımdır.\nSeneca',
    'Hayat, kendini bulmakla ilgili değildir; kendini yaratmakla ilgilidir. \nGeorge Bernard Shaw',
    'Düşünmeden bir gün bile geçiremediğiniz bir şeyden asla vazgeçmeyin. \nWinston Churchill',
    'En mutlu insanlar her şeyin en iyisine sahip değillerdir, sadece sahip oldukları her şeyi en iyi şekillerde kullanırlar.\nJudith May',
    'Geçmiş ne kadar zor olursa olsun, her zaman yeniden başlayabilirsiniz.”\nBuda',
    'Her başarı, deneme kararıyla başlar.”\nJohn F. Kennedy',
    'Başlangıç, işin en önemli kısmıdır.\nPlato',
    'Yarın sabah, bugünden daha erken kalk ve elinden gelenin en iyisini yap.\nJoan of Arc',
    'Bizim seçtiklerimiz, gerçekte ne olduğumuzu gösteren, yeteneklerimizden çok daha fazlası.\nJK Rowling',
    'Hayatta ne istersen, başkaları da isteyecek. Eşit bir hakka sahip olduğunuz fikrini kabul edecek kadar kendinize inanın. \nDiane Sawyer',
    'Yerinde duran, geriye gidiyor demektir… İleri, daima ileri!\nMustafa Kemal Atatürk',
    'Hayal ettim, hayalimin önündeki manileri tespit ettim. Manileri kaldırdığımda, hayalim kendiliğinden gerçekleşti.”\nMustafa Kemal Atatürk',
    'Bazı insanlar yağmuru hisseder, diğerleri ise sadece ıslanır.\nBob Marley',
    'Girmeye korktuğun mağara, umduğun hazineyi saklıyor olabilir.\nJoseph Campbell',
    'Önemli olan başkalarının düşündüğü büyük şeylerden ziyade; küçük de olsa kendi düşündüklerindir.\nHaruki Murakami',
    'Yarınlar yorgun ve bezgin insanlara değil, rahatlarını terk edebilen gayretli insanlara aittir.\nMarcus Tullius Cicero',
    'İlk önce yapmaktan en çok kaçındığınız şeyi yapın.\nClifford Cohen',
    'İnsanlar bilinmeyenden korktukları için değişimden kaçınırlar. Ancak tarihte değişmeyen tek şey, her şeyin değiştiğidir.\nYuval Noah Harari',
    'Kendinizi adar ve kararlılıkla hareket ederseniz, istediğiniz her şeyin olmasını sağlayabilirsiniz.\nTony Robbins',
    'Dünya üzerinde büyük bir etki yaratabilmek için sıfırdan başlamak zorunda değilsiniz.\nJack Dorsey',
    'Aşılmasına imkan olmayan hiçbir duvar yoktur.\nAnton Çehov',
    'Binlerce kilometrelik bir yolculuk bile, tek bir adımla başlamak zorundadır.\nLao Tzu',
    'Bulunduğunuz yerden memnun değilseniz, yerinizi değiştirin. Ağaç değilsiniz.\nJim Rohn',
    'Başarı son değildir, başarısızlık da ölümcül değildir. Önemli olan şey devam etme cesaretidir.\nWinston Churchill',
    'Başarı bir gecede kazanılmaz. Parça parça gelir; bugün biraz alırsın, yarın biraz daha… Tümünü elde edene kadar her gün biraz… Ertelediğin gün ise o gün alacağın başarıyı kaybedersin.\nIsraelmore Ayivor',
    'Erteleme korkunun tembel kuzenidir. Bir şey hakkında kaygı hissettiğimizde onu erteleriz.\nNoelle Hancock',
    'Bugünü boşa harcayan biri olarak hangi hakla yarından bir şeyler isterim?\ nAlain-Fournier',
    'Eğer hayatta bir yere gelmek istiyorsanız, -yarın-ın en işe yaramaz kelime olduğunu keşfedin.\nJose N. Harris',
    'Sadece, öldüğünüzde yarım kalmasını istediğiniz işleri yarına erteleyin.\nPablo Picasso',
    'Vakit öldürmek dışında bir şey yapın. Çünkü vakit sizi öldürüyor.\nPaulo Coelho',
    'Eğer her zaman kolay olanı yapar ve en az engeli olan yolu seçerseniz, hiçbir zaman konfor alanınızdan çıkamazsınız. Ve, harika şeyler konfor alanlarında ortaya çıkmaz.\nRoy Bennett',
    'Fikirlerinizin ayakları vardır ve tıpkı sizin aklınıza koştukları gibi başkalarının da akıllarına koşabilirler. Bu noktada önemli olan tek şey bitiş çizgisini ilk kimin geçtiğidir. Gök kubbenin altındaki hiçbir şey yeni değil, o yüzden fikirlerini harekete geçir.\nSanjo Jendayi',
    'Bundan bir yıl sonra kendinizi -Keşke o gün başlasaydım.- derken bulabilirsiniz.\nKaren Lamb',
    'Belirsizliği, tutarsızlığı, çelişkiyi, kararsızlığı kucaklamaya istekli ol.\nLeonardo da Vinci',
    'Hiç durmadığınız sürece, ne kadar yavaş gittiğinizin bir önemi yok.\nKonfüçyüs',
    'Kazanmak için irade, başarmak için arzu, potansiyelinin tamamına ulaşmak için dürtü… Bunlar, kişisel mükemmeliyetin kapılarını açmanız için gereken anahtarlardır.\nKonfüçyüs',
    'Mutlu olmanın iki yolu var: Ya isteklerinizi azaltacaksınız ya da imkanlarınızı zorlayacaksınız.\nFyodor Dostoyevski',
    'Yapmadığınız hemen hemen her şey, korkunun, çekingenliğin veya Neden olmasın? sorusunu sormayışınızdan kaynaklanır.\nSeth Godin',
    'Bir sonraki tatilin ne zaman olduğunu merak etmek yerine, kaçmanı gerektirmeyen bir hayat kurmalısın belki de.\nSeth Godin',
    'Bir şeye başlayıp başarısız olmaktan daha kötü tek şey hiçbir şeye başlamamaktır.\nSeth Godin',
    'Hayatımı sadece ben değiştirebilirim. Kimse benim için bunu yapmaz!\nCarol Burnett',
    'Hayatın %10 u sana olanların, %90 ı ise buna nasıl cevap verdiğinden ibarettir.',
    'Umutsuz durumlar yoktur, umutsuz insanlar vardır. Ben hiçbir zaman umudumu yitirmedim.\nMustafa Kemal Atatürk',
    'Eğer bir gün benim sözlerim bilimle ters düşerse bilimi seçin.\nMustafa Kemal Atatürk',
    'Hayatta hiçbir şey, korkmak için değildir, her şey anlaşılmak içindir. Şimdi, daha fazlasını anlama zamanı, böylece daha az korkabiliriz.\nMarie Curie',
    'Çok çalışmak dışında başka bir yol yok, bunu benimse. Saatlerce çalışmak zorundasın çünkü her zaman geliştirebileceğin bir şey var.\nRoger Federer',
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
    'Bundan yirmi yıl sonra yapmadığınız şeylerden dolayı, yaptıklarınızdan daha fazla pişman olacaksınız. Demir alın ve güvenli limanlardan çıkın artık… Rüzgarları arkanıza alın, araştırın, hayal edin ve keşfedin.\nMark Twain',
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
    'Hayatta neyin mümkün olacağını belirleyen en önemli şey, altını ve üstünü çizeceğiniz şeylere doğru karar vermektir.\nTayfun Topaloğlu',
  ];
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 6000), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xfffDAA520),
        child: Center(
            child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/dersicon/cc.png',
                        height: 220,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  '${phrases.elementAt(Random().nextInt(phrases.length))}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Raleway",
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
