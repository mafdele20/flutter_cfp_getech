import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text('/CFP-GETECH'), backgroundColor: Colors.deepOrange, ) ,
      body: Center(child: Text("Bienvenue sur CFP-GETECH")),
    );

  }
}
