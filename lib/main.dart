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
        height: 100,
        color: Colors.greenAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
