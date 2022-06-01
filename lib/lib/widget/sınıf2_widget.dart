import 'package:flutter/material.dart';

class SinifKodu2 extends StatefulWidget {
  final String resim;
  final String sinif;

  const SinifKodu2({Key key, this.resim, this.sinif}) : super(key: key);

  @override
  _SinifKodu2State createState() => _SinifKodu2State();
}

class _SinifKodu2State extends State<SinifKodu2> {
  @override
  Widget build(BuildContext context) {
    return /*Material(
      elevation: 5,
      shadowColor: Theme.of(context).accentColor,
      color: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(48),
      child: Container(
        height: 50,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(48),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
              ),
              child: Image.asset(
                "assets/dersicon/${widget.resim}",
              ),
            ),
            SizedBox(
              width: 36,
            ),
            Text(
              "${widget.sinif}",
              style: TextStyle(
                  fontSize: 26, color: Colors.white, fontFamily: "Lato"),
            ),
          ],
        ),
      ),
    );*/
        Material(
      shadowColor: Colors.white54,
      color: Theme.of(context).backgroundColor,
      borderRadius: BorderRadius.circular(12),
      elevation: 8,
      child: Container(
        height: 195,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).accentColor, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                "assets/dersicon/${widget.resim}",
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "${widget.sinif}",
              style: TextStyle(
                  fontSize: 26,
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontFamily: "Lato"),
            ),
          ],
        ),
      ),
    );
  }
}
