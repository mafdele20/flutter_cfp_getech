import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text('CFP-GETECH'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ) ,
      body: Center(child: Image.asset('image/logo.png'),),
    );

  }
}
