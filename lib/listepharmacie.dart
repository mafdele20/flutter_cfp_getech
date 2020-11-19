import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class Liste extends StatefulWidget{
  @override
  _ListeState createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  List<dynamic> listPramacie ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title: Text('CFP-GETECH'), backgroundColor: Colors.deepOrange, ) ,
      body: Center(child:
         this.listPramacie == null?CircularProgressIndicator():
             ListView.builder(
               itemCount: this.listPramacie==null?0:this.listPramacie.length,
               itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     color: Colors.deepOrangeAccent,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: RaisedButton(
                         color: Colors.black,
                         child: Text(this.listPramacie[index]['Nom'], style: TextStyle(color: Colors.white),),
                       ),
                     ) ,
                   ),
                 );
               },
             )
      ),
    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadparmacie();
  }

  void loadparmacie(){

    String url = "http://192.168.56.1/Application_Gestion_CFP-GETECH-master/Departement/getAllDepartement";
    http.get(url)
    .then((response){
      setState(() {
         this.listPramacie = json.decode(response.body)["Departements"];
      });
    }).catchError((error){
      print(error);
    });



  }
}
