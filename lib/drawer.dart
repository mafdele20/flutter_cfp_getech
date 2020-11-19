import 'package:flutter/material.dart';
import 'package:demo/listepharmacie.dart';
import 'package:demo/ajoutpharmacie.dart';
import 'package:demo/search.dart';
import './accueil.dart';

class DrawerMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget> [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.deepOrange,Colors.greenAccent] )
              ),
              child:CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                backgroundImage: AssetImage('images/logo.png'),
              )
          ),
          ListTile(
            title: Text('Profil' ,style: TextStyle(fontSize: 20)),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil()));

            },
          ),
          Divider(height: 2, color: Colors.deepOrange,),
          ListTile(
            title: Text('Candidater',style: TextStyle(fontSize: 20)),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ajout()));
            },
          ),
          Divider(height: 2, color: Colors.deepOrange,),
          ListTile(
            title: Text('Rechercher un formation',style: TextStyle(fontSize: 20)),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
            },
          ),
          Divider(height: 2,color: Colors.deepOrange,),
          ListTile(
            title: Text('Liste des departements',style: TextStyle(fontSize: 20)),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Liste()));
            },
          ),
        ],
      ),
    );

  }
}
