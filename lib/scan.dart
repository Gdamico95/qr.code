import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String qrResult = "Nada escaneado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escanear QR Code"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Resultado", 
              style: TextStyle(
                fontSize: 25.0, 
                fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(12.0),
              child: Text("Escanear QR Code"),
              onPressed: () async{
                String scaning = await BarcodeScanner.scan();
                setState(() {
                  qrResult = scaning;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: Colors.blue,
                  width: 2.0, 
                ),
              ),
            ),
            Text(
              qrResult, 
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: 18.0),
            )
          ]
        ),

      ),
    );
  }
}