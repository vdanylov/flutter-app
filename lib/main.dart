import 'package:flutter/material.dart';

main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
      ),
    );
  }
}
