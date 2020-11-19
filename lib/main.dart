import 'package:demo/drawer.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Test(), )) ;
}

class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       drawer: DrawerMain(),
       appBar : AppBar(title: Text('CFP-GETECH'), backgroundColor: Colors.deepOrange, ) ,
       body: Center(child: Text("L'effort fait les forts")),
     );
  }

}