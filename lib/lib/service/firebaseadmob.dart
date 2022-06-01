import 'dart:io';
import 'dart:math';
import 'package:firebase_admob/firebase_admob.dart';

class AdMobService {
  List<String> banners = [
    'ca-app-pub-9912889867352253/3757130264',
    'ca-app-pub-9912889867352253/1194244780',
    'ca-app-pub-9912889867352253/8817885253',
  ];

  List<String> gecisler = [
    'ca-app-pub-9912889867352253/7504803588',
    'ca-app-pub-9912889867352253/6893595341',
    'ca-app-pub-9912889867352253/4878640246',
    'ca-app-pub-9912889867352253/2252476900',
  ];

  String getAdMobAppId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544~1458002511';
    } else if (Platform.isAndroid) {
      return "ca-app-pub-9912889867352253~5070211933";
    }
    return null;
  }

  String getBannerAdId() {
    if (Platform.isIOS) {
//      return 'ca-app-pub-2334510780816542/6833456062';
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isAndroid) {
//      return 'ca-app-pub-2334510780816542/2993163849';
      return banners.elementAt(Random().nextInt(banners.length));
    }
    return null;
  }

  String getInterstitialAdId() {
    if (Platform.isIOS) {
//      return '';
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (Platform.isAndroid) {
//      return '';
      return gecisler.elementAt(Random().nextInt(gecisler.length));
    }
    return null;
  }

  InterstitialAd getNewTripInterstitial() {
    return InterstitialAd(
      adUnitId: getInterstitialAdId(),
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }
}
