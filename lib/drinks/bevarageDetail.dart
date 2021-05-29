import 'package:flutter/material.dart';
import 'package:dashboard/main.dart';

class BeverageDetail extends StatefulWidget {
  String name;
  int price;
  String image;
  String description;
  BeverageDetail({Key key, this.name, this.price, this.image, this.description})
      : super(key: key);

  @override
  _BeverageDetailState createState() => _BeverageDetailState();
}

class _BeverageDetailState extends State<BeverageDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(widget.image),
            ),
            Row(
              children: <Widget>[
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
                ),
                Icon(Icons.edit)
              ],
            )
          ],
        ),
      ),
    );
  }
}
