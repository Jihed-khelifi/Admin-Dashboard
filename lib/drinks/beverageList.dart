import 'dart:html';
import 'package:dashboard/drinks/addBeverage.dart';
import 'package:dashboard/styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/main.dart';
import 'dart:core';
import 'bevarageDetail.dart';

class Beverage_details {
  String name;
  String type;

  Beverage_details({this.name, this.type});
}

class Beverage extends StatefulWidget {
  Beverage({Key key}) : super(key: key);

  @override
  _BeverageState createState() => _BeverageState();
}

class _BeverageState extends State<Beverage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<Widget> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        validator: (value) {
                          return value.isNotEmpty ? null : "Invalid Field";
                        },
                        decoration: InputDecoration(hintText: "Name"),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Price',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Choice Box"),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Okay'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }

  List<String> image = [
    'https://firebasestorage.googleapis.com/v0/b/idrink-6e3e4.appspot.com/o/celtia.png?alt=media&token=2f6dbf08-5abe-4a42-aaec-82a422aa52cf'
  ];
  List<int> prices = [5, 6, 15, 12, 35, 50, 60, 22, 65, 180, 120, 56];
  List<String> names = [
    'celtia',
    'becks',
    'Prince',
    'Cocktail',
    'White Magon',
    'Gin',
    'Absolute',
    'Cheap Wine',
    'Smuggler',
    'black Daniel',
    'Absolute Red',
    'Red Magon'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text('Beverages'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey[900],
            onPressed: () async {
              await showInformationDialog(context);
            },
            child: Icon(Icons.add)),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: names.map((name) {
              int i = 0;
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: darkGreyColor,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BeverageDetail(
                              image: image[i],
                              name: name,
                              price: prices[i],
                            )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage('${image[i]}'),
                      ),
                      Text(
                        '$name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
