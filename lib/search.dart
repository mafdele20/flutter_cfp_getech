import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text('CFP-GETECH'), backgroundColor: Colors.deepOrange, ) ,
      body: Center(child: Text("rechercher un pharmacie")),
    );

  }
}
