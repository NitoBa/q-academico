import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  CollectionReference userRef = Firestore.instance.collection("Users").reference();

  String id = "Esperando dados...";

  void addUser(){
  
  var usuario = {
    "nome":"Pedro",
    "sobrenome": "Alves",
    "idade": 20,
    "telefones":{
      "principal":"3224-4458",
      "celular":"99595-8498",
    }
  };
  userRef.add(usuario).then((val){
    print(val.firestore.document(val.documentID));
  });
}



  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: Text("Q Acadêmico"),
      ),
      body: Center(child: Text(id)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            addUser();
            id = userRef.id;
          });
          
        },
      ),
    );
  }
}