import 'dart:html';

import 'package:flutter/material.dart';

class Customer {
  String name;
  int id;
  String lastVisit;
  Customer({this.name, this.id, this.lastVisit});
}

class CustomerCard extends StatefulWidget {
  CustomerCard({Key key}) : super(key: key);

  @override
  _CustomerCardState createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  final List<String> name = [
    'Chadi Ayari 1',
    'Jihed Khelifi 2',
    'Hamza Abdellaoui 3',
    'Houssine Ichrmadh 4',
    'Ghazy Amari 5',
    'Chadi Ayari 6',
    'Jihed Khelifi 7',
    'Hamza Abdellaoui 8',
    'Houssine Ichrmadh 9',
    'Ghazy Amari 10',
    'Chadi Ayari 11',
    'Jihed Khelifi 12',
    'Hamza Abdellaoui 13',
    'Houssine Ichrmadh 14',
    'Ghazy Amari 15',
  ];
  final List<String> favoriteDrink = [
    'Seltia',
    'Becks',
    'Vodka',
    'Whiskey',
    'Shark',
    'Seltia',
    'Becks',
    'Vodka',
    'Whiskey',
    'Shark',
    'Seltia',
    'Becks',
    'Vodka',
    'Whiskey',
    'Shark'
  ];
  final List<double> expenses = [
    45.0,
    40.0,
    100.0,
    60.0,
    30.0,
    45.0,
    40.0,
    100.0,
    60.0,
    30.0,
    45.0,
    40.0,
    100.0,
    60.0,
    30.0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: Text('Customers details'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: name.length * 70.0,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.grey[400],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYbecRmCNQYRRQgkETwkFgtFy078vRbpUqGA&usqp=CAU'),
                                ),
                                SizedBox(width: 15.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '${name[index]}',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Favorite drink: ${favoriteDrink[index]}',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${expenses[index]}',
                            style: TextStyle(
                              color: Colors.indigo[600],
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: name.length,
            ),
          ),
        ),
      ),
    );
  }
}
