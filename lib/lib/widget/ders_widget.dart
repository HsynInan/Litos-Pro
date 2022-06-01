import 'package:flutter/material.dart';

class DersWidget extends StatefulWidget {
  final String dersName;
  final String resim;

  DersWidget({
    Key key,
    this.dersName,
    this.resim,
  }) : super(key: key);

  @override
  _DersWidgetState createState() => _DersWidgetState();
}

class _DersWidgetState extends State<DersWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Image.asset(
                "assets/dersiconları/${widget.resim}",
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              "${widget.dersName}",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Theme.of(context).textTheme.bodyText1.color),
            ),
          )
        ],
      ),
    );
  }
}
