import 'package:flutter/material.dart';
import 'package:qr_reader/scan.dart';

import 'generate.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Leitor e Gerador - QR Code"),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(image: NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-in-comic-style-scanner-in-smartphone-vectpr-vector-id1166145556")),
            flatButton("Escanear código QR", Scan()),
            SizedBox(height: 10.0,),
            flatButton("Gerar código QR", Generate()),
          ]
        )
      ),
    );
  }

  Widget flatButton(String text, Widget widget){
    return FlatButton(
      padding: EdgeInsets.all(12.0),
      child: Text(text),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
      }, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.blue,
          width: 3.0, 
        ),
      ),
    );
  }



}