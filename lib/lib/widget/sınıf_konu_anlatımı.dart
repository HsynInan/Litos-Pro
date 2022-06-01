import 'package:flutter/material.dart';

class SinifSecimiKonuAnlatimi extends StatefulWidget {
  final String resim;
  final String sinif;

  const SinifSecimiKonuAnlatimi({Key key, this.resim, this.sinif})
      : super(key: key);

  @override
  _SinifSecimiKonuAnlatimiState createState() =>
      _SinifSecimiKonuAnlatimiState();
}

class _SinifSecimiKonuAnlatimiState extends State<SinifSecimiKonuAnlatimi> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Theme.of(context).accentColor,
      color: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(48),
      child: Container(
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
    );
  }
}
