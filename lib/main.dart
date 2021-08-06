import 'package:flutter/material.dart';

void main() {
  //widgetsApp  // materialApp //cupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ni kunoma"),
      ),
      body: Container(
        child: Text("kunoma") ,),
    );
  }
}
