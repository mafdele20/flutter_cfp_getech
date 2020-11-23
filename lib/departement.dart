import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Departement extends StatefulWidget{

  @override
  _DepartementState createState() => _DepartementState();
}

class _DepartementState extends State<Departement> {
  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final nomController = TextEditingController();
  //final emailController = TextEditingController();
  //final passwordController = TextEditingController();

  Future addDepartement() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String nom = nomController.text;
  //  String email = emailController.text;
   // String password = passwordController.text;

    // SERVER API URL
    //var url = 'http://192.168.1.5/mes_projets/client_php/Service/add/mes_projets/client_php/Service/add';

    // Store all data with Param nom.
    var data = {'nom': nom};
    String url = "http://192.168.56.1/Application_Gestion_CFP-GETECH-master/Departement/addDepartement";
    // Starting Web API Call.
    var response = await http.post(url,body: json.encode(data));

    // Getting Server response into variable.
    var message = response.body;

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar : AppBar(title: Text('Enregistrer departement'), backgroundColor: Colors.deepOrange, centerTitle: true ) ,
        body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Enregistrer',
                          style: TextStyle(fontSize: 21))),
                  Divider(),
                  Container(
                      //width: 280,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: nomController,
                        autocorrect: true,
                        decoration: InputDecoration(hintText: 'Entrer le nom du departement'),
                      )),

                  RaisedButton(
                    onPressed: addDepartement,
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Envoyer'),
                  ),
                  Visibility(
                      visible: visible,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: CircularProgressIndicator())),
                ],
              ),
            )));
  }

}
