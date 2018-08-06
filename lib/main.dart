import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Center(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add product'.toUpperCase()),
                )),
              ),
              Card(
                child: Column(children: <Widget>[
                  Image.asset('assets/food.jpg'),
                ]),
              )
            ],
          )),
    );
  }
}
