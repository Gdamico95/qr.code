import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "https://google.com";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerar QR Code"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            QrImage(data: qrData),
            SizedBox(height: 10.0),
            Text("Atribua seu link/texto ao QR Code"),
            TextField(
              controller: qrText,
              decoration: InputDecoration(
                hintText: "Insira o link/texto aqui"
              ),
            ),
            SizedBox(height: 20.0),
            FlatButton(
              padding: EdgeInsets.all(12.0),
              child: Text("Gerar QR Code"),
              onPressed: () {
                if(qrText.text.isEmpty){
                  setState(() {
                    qrData = "https://itstransdata.com";
                  });
                  }else{
                  setState(() {
                    qrData = qrText.text;
                  });
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: Colors.blue,
                  width: 2.0, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}