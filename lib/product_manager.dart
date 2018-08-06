import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String initialProduct;
  ProductManager(this.initialProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    _products.add(widget.initialProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
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
        Products(_products)
      ],
    );
  }
}
