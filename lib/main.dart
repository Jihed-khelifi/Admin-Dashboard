import 'dart:html';
import 'dart:js';
import 'manage.dart';
import 'package:dashboard/Customers/customer_details.dart';
import 'package:dashboard/drinks/addBeverage.dart';
import 'package:dashboard/drinks/beverageList.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/pages/reviews.dart';
import 'package:dashboard/pages/income.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/customer_details': (context) => CustomerCard(),
      '/beverageList': (context) => Beverage(),
      '/reviews': (context) => ReviewsPage(),
      '/income': (context) => IncomePage()
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          toolbarHeight: 80.0,
          elevation: 0,
          bottom: TabBar(
              indicatorColor: Theme.of(context).primaryColorLight,
              indicatorWeight: 3,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w100),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Tab(
                  child: Text('Manage'),
                ),
              ]),
          title: Text(
            'Admin Panel',
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Card(
                      child: Row(
                    children: <Widget>[
                      Icon(Icons.people),
                      Text('Number of clients'),
                      Text('115'),
                    ],
                  )),
                ),
                Expanded(
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.wine_bar),
                        Text('Most sold drink'),
                        Text('Seltia'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.local_drink),
                        Text('Most sold Cocktail'),
                        Text('Bloody Mary'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text('Income'),
                        Text('4000Dt'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ManageSection()
        ]),
      ),
    );
  }
}
