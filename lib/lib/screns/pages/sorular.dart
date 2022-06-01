import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/model/sorumodel.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/widget/answer.dart';

import 'package:permission_handler/permission_handler.dart';
import 'dart:ui' as ui;
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;
import 'package:timer_builder/timer_builder.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SoruCozumSayfasi extends StatefulWidget {
  final String kategoriadi;
  final String jsonAdi;
  final String testNo;
  const SoruCozumSayfasi({Key key, this.jsonAdi, this.kategoriadi, this.testNo})
      : super(key: key);

  @override
  _SoruCozumSayfasiState createState() => _SoruCozumSayfasiState();
}

class _SoruCozumSayfasiState extends State<SoruCozumSayfasi> {
  GlobalKey globalKey = GlobalKey();
  List<TouchPoints> points = List();
  double opacity = 1.0;
  StrokeCap strokeType = StrokeCap.round;
  double strokeWidth = 3.0;
  Color selectedColor = Colors.black;
  // final ams = AdMobService();
  int sorusayisi;
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;
  Future<void> _pickStroke() async {
    //Shows AlertDialog
    return showDialog<void>(
      context: context,

      //Dismiss alert dialog when set true
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        //Clips its child in a oval shape
        return ClipOval(
          child: AlertDialog(
            //Creates three buttons to pick stroke value.
            actions: <Widget>[
              //Resetting to default stroke value
              FlatButton(
                child: Icon(
                  Icons.clear,
                ),
                onPressed: () {
                  strokeWidth = 3.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 24,
                ),
                onPressed: () {
                  strokeWidth = 10.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 40,
                ),
                onPressed: () {
                  strokeWidth = 30.0;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.brush,
                  size: 60,
                ),
                onPressed: () {
                  strokeWidth = 50.0;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _opacity() async {
    //Shows AlertDialog
    return showDialog<void>(
      context: context,

      //Dismiss alert dialog when set true
      barrierDismissible: true,

      builder: (BuildContext context) {
        //Clips its child in a oval shape
        return ClipOval(
          child: AlertDialog(
            //Creates three buttons to pick opacity value.
            actions: <Widget>[
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 24,
                ),
                onPressed: () {
                  //most transparent
                  opacity = 0.1;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 40,
                ),
                onPressed: () {
                  opacity = 0.5;
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Icon(
                  Icons.opacity,
                  size: 60,
                ),
                onPressed: () {
                  //not transparent at all.
                  opacity = 1.0;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _save() async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();

    //Request permissions if not already granted
    if (!(await Permission.storage.status.isGranted))
      await Permission.storage.request();

    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(pngBytes),
        quality: 60,
        name: "canvas_image");
    print(result);
  }

  List<Widget> fabOption() {
    return <Widget>[
      // FloatingActionButton(
      //   heroTag: "paint_save",
      //   child: Icon(Icons.save),
      //   tooltip: 'Save',
      //   onPressed: () {
      //     //min: 0, max: 50
      //     setState(() {
      //       _save();
      //     });
      //   },
      // ),
      FloatingActionButton(
        heroTag: "paint_stroke",
        child: Icon(Icons.brush),
        tooltip: 'Stroke',
        onPressed: () {
          //min: 0, max: 50
          setState(() {
            _pickStroke();
          });
        },
      ),
      FloatingActionButton(
        heroTag: "paint_opacity",
        child: Icon(Icons.opacity),
        tooltip: 'Opacity',
        onPressed: () {
          //min:0, max:1
          setState(() {
            _opacity();
          });
        },
      ),
      FloatingActionButton(
          heroTag: "erase",
          child: Icon(Icons.clear),
          tooltip: "Erase",
          onPressed: () {
            setState(() {
              points.clear();
            });
          }),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_red",
        child: colorMenuItem(Colors.red),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.red;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_green",
        child: colorMenuItem(Colors.green),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.green;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_pink",
        child: colorMenuItem(Colors.pink),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.pink;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.white,
        heroTag: "color_blue",
        child: colorMenuItem(Colors.blue),
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.blue;
          });
        },
      ),
    ];
  }

  void _questionAnswered(String answerScore) {
    setState(() {
      // answer was selected
      answerWasSelected = true;
      // check if answer was correct
      if (answerScore == "true") {
        _totalScore++;
        correctAnswerSelected = true;
      } else {
        _totalScore++;
      }
      //                                          ? Color(0xfff03e4c2)
      //                                    : Color(0xfffca2b48)
      // adding to the score tracker on top
      _scoreTracker.add(
        answerScore == "true"
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.cancel,
                color: Colors.red,
              ),
      );
      //when the quiz ends
      if (_questionIndex + 1 == sorusayisi) {
        endOfQuiz = true;
      }
    });
  }

  DateTime alert;

  @override
  void initState() {
    super.initState();
    alert = DateTime.now().add(Duration(seconds: 1080));
    ReadJsonData();
  }

//  final ams = AdMobService();

  @override
  Widget build(BuildContext context) {
    //  bool _bitis = false;
    /* _showDialog() {
      showDialog(
        context: context,
        barrierDismissible: false, //sadece butonlara basınca ekrandan çıkıyor
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text("Silmek istediğinize emin misiniz?"),
            content: Text("Hello world"),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: MaterialButton(
                  shape: StadiumBorder(),
                  minWidth: 100,
                  color: Colors.pinkAccent,
                  child: new Text("Evet"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.pinkAccent,
                child: new Text("Hayır"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }*/

    /*InterstitialAd newAdd = ams.getNewTripInterstitial();
    newAdd.load();*/
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).buttonColor,
                size: 24,
              ),
              onPressed: () {
                Navigator.pop(context);

                /*    if (ReklamMiktari.ReklamSayisi % 101 == 0) {
                  ReklamMiktari.ReklamSayisi = ReklamMiktari.ReklamSayisi + 1;
                } else {
                  newAdd.show(
                      anchorType: AnchorType.bottom,
                      anchorOffset: 0.0,
                      horizontalCenterOffset: 0.0);
                }*/
              },
            ),
            // actions: [
            //   Padding(
            //     padding: const EdgeInsets.only(right: 24),
            //     child: TimerBuilder.scheduled([alert], builder: (context) {
            //       // This function will be called once the alert time is reached
            //       var now = DateTime.now();
            //       var reached = now.compareTo(alert) >= 0;
            //       final textStyle = Theme.of(context).textTheme.title;
            //       return Center(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: <Widget>[
            //             !reached
            //                 ? TimerBuilder.periodic(Duration(seconds: 1),
            //                     alignment: Duration.zero, builder: (context) {
            //                     // This function will be called every second until the alert time
            //                     var now = DateTime.now();
            //                     var remaining = alert.difference(now);
            //                     return Text(
            //                       formatDuration(remaining),
            //                       style: textStyle,
            //                     );
            //                   })
            //                 : Text(
            //                     "Süre bitti!",
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w600,
            //                       fontSize: 18,
            //                       color: Colors.black,
            //                     ),
            //                   )
            //           ],
            //         ),
            //       );
            //     }),
            //   ),
            // ],
            /* actions: [
            IconButton(
              icon: Icon(Icons.nights_stay),
              onPressed: () {
                //      currentTheme.toggleTheme();
              },
            ),
          ],*/
            centerTitle: true,
          ),
          // floatingActionButton: AnimatedFloatingActionButton(
          //   fabButtons: fabOption(),
          //   colorStartAnimation: Theme.of(context).accentColor,
          //   colorEndAnimation: Colors.blue,
          //   animatedIconData: AnimatedIcons.add_event,
          // ),
          body: FutureBuilder(
              future: ReadJsonData(),
              builder: (context, data) {
                var items = data.data as List<ProductDataModel>;
                if (items != null) {
                  return SingleChildScrollView(
                    child: Container(
                      /* decoration: BoxDecoration(
                        /*image: DecorationImage(
                            image: AssetImage(
                              "assets/icon/re1.png",
                            ),
                            fit: BoxFit.cover),*/
                        gradient: LinearGradient(
                            colors: [
                              Color(0xfff904e95),
                              Color(0xfffe96443),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),*/
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /*  TimerBuilder.scheduled([alert], builder: (context) {
                            // This function will be called once the alert time is reached
                            var now = DateTime.now();
                            var reached = now.compareTo(alert) >= 0;
                            final textStyle = Theme.of(context).textTheme.title;
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  !reached
                                      ? TimerBuilder.periodic(Duration(seconds: 1),
                                          alignment: Duration.zero,
                                          builder: (context) {
                                          // This function will be called every second until the alert time
                                          var now = DateTime.now();
                                          var remaining = alert.difference(now);
                                          return Text(
                                            formatDuration(remaining),
                                            style: textStyle,
                                          );
                                        })
                                      : Text("Süre bitti, bir daha dene")
                                ],
                              ),
                            );
                          }),*/

                          //      Center(child: BannerReklam()),
                          Container(
                            padding:
                                EdgeInsets.only(top: 12.0, right: 0, bottom: 8),
                            child: Text(
                              '${_totalScore.toString()}/${items.length}',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 6,
                            ),
                            child: Material(
                              color: Colors.white,
                              elevation: 4,
                              shadowColor: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.58,
                                decoration: BoxDecoration(
                                  /*  image: DecorationImage(
                                      image:
                                          AssetImage("assets/icon/tahta.png"),
                                      fit: BoxFit.fill),*/
                                  //     border: Border.all(color: Colors.black54),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: GestureDetector(
                                  onPanUpdate: (details) {
                                    setState(() {
                                      RenderBox renderBox =
                                          context.findRenderObject();
                                      points.add(TouchPoints(
                                          points: renderBox.globalToLocal(
                                              details.globalPosition),
                                          paint: Paint()
                                            ..strokeCap = strokeType
                                            ..isAntiAlias = true
                                            ..color = selectedColor
                                                .withOpacity(opacity)
                                            ..strokeWidth = strokeWidth));
                                    });
                                  },
                                  onPanStart: (details) {
                                    setState(() {
                                      RenderBox renderBox =
                                          context.findRenderObject();
                                      points.add(TouchPoints(
                                          points: renderBox.globalToLocal(
                                              details.globalPosition),
                                          paint: Paint()
                                            ..strokeCap = strokeType
                                            ..isAntiAlias = true
                                            ..color = selectedColor
                                                .withOpacity(opacity)
                                            ..strokeWidth = strokeWidth));
                                    });
                                  },
                                  onPanEnd: (details) {
                                    setState(() {
                                      points.add(null);
                                    });
                                  },
                                  child: RepaintBoundary(
                                    key: globalKey,
                                    child: Stack(
                                      children: <Widget>[
                                        Center(
                                          child: CachedNetworkImage(
                                            imageUrl: items[_questionIndex]
                                                .question
                                                .toString(),
                                            placeholder: _loader,
                                            errorWidget: _error,

                                            // fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        // CustomPaint(
                                        //   size: Size.infinite,
                                        //   painter: MyPainter(
                                        //     pointsList: points,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 36.0, right: 36, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (_scoreTracker.length == 0)
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                if (_scoreTracker.length > 0) ..._scoreTracker
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Answer(
                                  answerText: items[_questionIndex].answer1,
                                  answerColor: answerWasSelected
                                      ? items[_questionIndex].cevap1 == "true"
                                          ? Colors.green.shade400
                                          : Colors.red.shade400
                                      : null,
                                  answerTap: () {
                                    // if answer was already selected then nothing happens onTap
                                    if (answerWasSelected) {
                                      return;
                                    }
                                    //answer is being selected
                                    _questionAnswered(
                                        items[_questionIndex].cevap1);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Answer(
                                  answerText: items[_questionIndex].answer2,
                                  answerColor: answerWasSelected
                                      ? items[_questionIndex].cevap2 == "true"
                                          ? Colors.green.shade400
                                          : Colors.red.shade400
                                      : null,
                                  answerTap: () {
                                    // if answer was already selected then nothing happens onTap
                                    if (answerWasSelected) {
                                      return;
                                    }
                                    //answer is being selected
                                    _questionAnswered(
                                        items[_questionIndex].cevap2);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Answer(
                                  answerText: items[_questionIndex].answer3,
                                  answerColor: answerWasSelected
                                      ? items[_questionIndex].cevap3 == "true"
                                          ? Colors.green.shade400
                                          : Colors.red.shade400
                                      : null,
                                  answerTap: () {
                                    // if answer was already selected then nothing happens onTap
                                    if (answerWasSelected) {
                                      return;
                                    }
                                    //answer is being selected
                                    _questionAnswered(
                                        items[_questionIndex].cevap3);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Answer(
                                  answerText: items[_questionIndex].answer4,
                                  answerColor: answerWasSelected
                                      ? items[_questionIndex].cevap4 == "true"
                                          ? Colors.green.shade400
                                          : Colors.red.shade400
                                      : null,
                                  answerTap: () {
                                    // if answer was already selected then nothing happens onTap
                                    if (answerWasSelected) {
                                      return;
                                    }
                                    //answer is being selected
                                    _questionAnswered(
                                        items[_questionIndex].cevap4);
                                  },
                                ),
                              ),
                              Expanded(
                                child: Answer(
                                  answerText: items[_questionIndex].answer5,
                                  answerColor: answerWasSelected
                                      ? items[_questionIndex].cevap5 == "true"
                                          ? Colors.green.shade400
                                          : Colors.red.shade400
                                      : null,
                                  answerTap: () {
                                    // if answer was already selected then nothing happens onTap
                                    if (answerWasSelected) {
                                      return;
                                    }
                                    //answer is being selected
                                    _questionAnswered(
                                        items[_questionIndex].cevap5);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32.0, vertical: 8),
                            child: Row(
                              children: [
                                TimerBuilder.scheduled([alert],
                                    builder: (context) {
                                  // This function will be called once the alert time is reached
                                  var now = DateTime.now();
                                  var reached = now.compareTo(alert) >= 0;

                                  return Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        !reached
                                            ? TimerBuilder.periodic(
                                                Duration(seconds: 1),
                                                alignment: Duration.zero,
                                                builder: (context) {
                                                // This function will be called every second until the alert time
                                                var now = DateTime.now();
                                                var remaining =
                                                    alert.difference(now);
                                                return Container(
                                                  width: 120,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xfff3949ab),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      formatDuration(remaining),
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              })
                                            : Container(
                                                width: 120,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                    color: Color(0xfff3949ab)),
                                                child: Center(
                                                  child: Text(
                                                    "Süre bitti!",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 22,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      ],
                                    ),
                                  );
                                }),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 4,
                                          primary: Color(0xfff23734e),
                                          onPrimary: Colors.white,
                                          minimumSize:
                                              Size(double.infinity, 50.0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24))),
                                      onPressed: () {
                                        //Lütfen bir sonraki soruya geçmeden önce bir cevap seçin
                                        if (!answerWasSelected) {
                                          Scaffold.of(context).showSnackBar(
                                            SnackBar(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  24),
                                                          topRight:
                                                              Radius.circular(
                                                                  24))),
                                              backgroundColor:
                                                  Colors.grey.shade800,
                                              content: Text(
                                                  "✓ Lütfen bir sonraki soruya geçmeden önce bir cevap seçin."),
                                            ),
                                          );

                                          return;
                                        }
                                        setState(() {
                                          _questionIndex++;
                                          answerWasSelected = false;
                                          correctAnswerSelected = false;
                                        });
                                        // what happens at the end of the quiz
                                        if (_questionIndex >= sorusayisi) {
                                          /* newAdd.show(
                                              anchorType: AnchorType.bottom,
                                              anchorOffset: 0.0,
                                              horizontalCenterOffset: 0.0);*/

                                          setState(() {
                                            _questionIndex = 0;
                                            _totalScore = 0;
                                            _scoreTracker = [];
                                            endOfQuiz = false;
                                          });
                                        }
                                      },
                                      child: Text(
                                        endOfQuiz
                                            ? 'Testi tekrar çöz'
                                            : 'Sonraki Soru',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          if (answerWasSelected && !endOfQuiz) Container(),
                          /*Container(
                              height: 100,
                              width: double.infinity,
                              color: correctAnswerSelected
                                  ? Colors.green
                                  : Colors.red,
                              child: Center(
                                child: Text(
                                  correctAnswerSelected
                                      ? 'Well done, you got it right!'
                                      : 'Wrong :/',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),*/
                          // if (endOfQuiz)
                          //   Container(
                          //     height: 100,
                          //     width: double.infinity,
                          //     color: Colors.black,
                          //     child: Center(
                          //       child: Text(
                          //         _totalScore > 4
                          //             ? 'Congratulations! Your final score is: $_totalScore'
                          //             : 'Your final score is: $_totalScore. Better luck next time!',
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           fontWeight: FontWeight.bold,
                          //           color: _totalScore > 4
                          //               ? Colors.green
                          //               : Colors.red,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ));
                }
              })

          /*   bottomNavigationBar: Container(
          child: BannerReklam(),
        ),*/
          ),
    );
  }

  Widget _loader(BuildContext context, String url) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _error(BuildContext context, String url, dynamic error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.error),
        Text("İnternet Bağlantınızı Kontrol Ediniz !!!")
      ],
    ));
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString(
        'assets/testler/sınıflar/${widget.kategoriadi}/${widget.jsonAdi}/${widget.testNo}.json');
    final list = json.decode(jsondata) as List<dynamic>;
    setState(() {
      sorusayisi = list.length;
    });
    print(sorusayisi.toString() + "");
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

  _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, //sadece butonlara basınca ekrandan çıkıyor
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text("Silmek istediğinize emin misiniz?"),
          content: Text("Hello world"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.pinkAccent,
                child: new Text("Evet"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            MaterialButton(
              shape: StadiumBorder(),
              minWidth: 100,
              color: Colors.pinkAccent,
              child: new Text("Hayır"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget colorMenuItem(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          height: 36,
          width: 36,
          color: color,
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({this.pointsList});

  //Keep track of the points tapped on the screen
  List<TouchPoints> pointsList;
  List<Offset> offsetPoints = List();

  //This is where we can draw on canvas.
  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i] != null && pointsList[i + 1] != null) {
        //Drawing line when two consecutive points are available
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
            pointsList[i].paint);
      } else if (pointsList[i] != null && pointsList[i + 1] == null) {
        offsetPoints.clear();
        offsetPoints.add(pointsList[i].points);
        offsetPoints.add(Offset(
            pointsList[i].points.dx + 0.1, pointsList[i].points.dy + 0.1));

        //Draw points when two points are not next to each other
        canvas.drawPoints(
            ui.PointMode.points, offsetPoints, pointsList[i].paint);
      }
    }
  }

  //Called when CustomPainter is rebuilt.
  //Returning true because we want canvas to be rebuilt to reflect new changes.
  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}

//Class to define a point touched at canvas
class TouchPoints {
  Paint paint;
  Offset points;
  TouchPoints({this.points, this.paint});
}

Widget _alert() {
  return AlertDialog(
    title: Text("Süre bitti"),
    elevation: 5,
    backgroundColor: Colors.red,
    actions: [Icon(Icons.add_alarm)],
  );
}

String formatDuration(Duration d) {
  String f(int n) {
    return n.toString().padLeft(2, '0');
  }

  // We want to round up the remaining time to the nearest second
  d += Duration(microseconds: 999999);
  return "${f(d.inMinutes)}:${f(d.inSeconds % 60)}";
}
