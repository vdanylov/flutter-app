import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  List<String> _products = ['Pomidors'];
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
                  color: Color.fromRGBO(100, 200, 200, 1.0),
                  onPressed: () {
                    setState(() {
                      _products.add('Super tomatos!');
                    });
                  },
                  child: Text('Add product'.toUpperCase()),
                )),
              ),
              Column(
                children: _products
                    .map((product) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Container(
                                margin: EdgeInsets.all(5.0),
                                child: Text(product),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
