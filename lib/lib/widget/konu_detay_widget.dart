import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onikincisinif12_soruvedersnotlari/lib/service/ad_services.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class DetayWidget extends StatefulWidget {
  final String filePath;
  final String titleText;
  final String assetfilePath;
  @override
  DetayWidget({Key key, this.filePath, this.titleText, this.assetfilePath})
      : super(key: key);

  @override
  _DetayWidgetState createState() => _DetayWidgetState();
}

class _DetayWidgetState extends State<DetayWidget> {
  WebViewController _controller;
  bool showspinner = true;
  //WebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.titleText}",
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: _showWebview(),
        ),
      ),
      /*  bottomNavigationBar: Container(
        height: 60,
        child: Center(child: BannerReklam()),
      ),*/
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle
        .loadString('assets/${widget.assetfilePath}/${widget.filePath}.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  _showWebview() {
    return WebView(
      initialUrl: "",
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (finished) {
        setState(() {
          showspinner = false;
        });
      },
      onWebViewCreated: (WebViewController webViewController) {
        _controller = webViewController;

        _loadHtmlFromAssets();
      },
    );
  }

//assets/matematik/mat.html

}
