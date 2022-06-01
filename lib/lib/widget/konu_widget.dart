import 'package:flutter/material.dart';

class KonuWidget extends StatefulWidget {
  final String konuName;
  KonuWidget({Key key, this.konuName}) : super(key: key);

  @override
  _KonuWidgetState createState() => _KonuWidgetState();
}

class _KonuWidgetState extends State<KonuWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).buttonColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.school,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "${widget.konuName}",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ],
            ),
          )),
    );
  }
}
