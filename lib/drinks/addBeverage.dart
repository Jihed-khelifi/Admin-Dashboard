import 'package:flutter/material.dart';
import 'dart:html';

class BeverageDetails extends StatefulWidget {
  BeverageDetails({Key key}) : super(key: key);

  @override
  _BeverageDetailsState createState() => _BeverageDetailsState();
}

class _BeverageDetailsState extends State<BeverageDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Text('drink details'),
    );
  }
}
