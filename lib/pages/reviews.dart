import 'package:flutter/material.dart';
import 'package:dashboard/main.dart';

class ReviewsPage extends StatefulWidget {
  ReviewsPage({Key key}) : super(key: key);

  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Reviews',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Text('reviews'),
    );
  }
}
