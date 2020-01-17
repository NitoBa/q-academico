import 'package:flutter/material.dart';
import 'package:q_academico/src/pages/home/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  runApp(MyApp());
  final FirebaseApp app = await FirebaseApp.configure(
    name: "Q Academico",
    options: FirebaseOptions(
      googleAppID: "1:134046119933:android:6a6f3d730d2081f1290b94",
      gcmSenderID: "134046119933",
      apiKey: "AIzaSyCcIx7SwF1vQ1bI6MJNwkEn544C-L7DO4c",
      projectID: "q-academico",
      storageBucket: "q-academico.appspot.com",
      clientID: "134046119933-ur929h3e38vhm5ffu0g33cal8lkfq59f.apps.googleusercontent.com",
      bundleID: "com.nitoba.qacademico.q_academico",

    )
  );

  var firestore = Firestore(app: app);
  firestore.settings(
    persistenceEnabled: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Q-Acadêmico',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


