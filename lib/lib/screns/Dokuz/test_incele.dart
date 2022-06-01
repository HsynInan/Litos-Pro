import 'package:flutter/material.dart';

class KazanimTestleri2 extends StatelessWidget {
  const KazanimTestleri2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kazanım Testleri',
          style: TextStyle(fontFamily: "Raleway"),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Çok yakında yeniden sizlerle!",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
