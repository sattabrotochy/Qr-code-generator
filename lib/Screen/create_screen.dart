import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QrCodeCreate extends StatefulWidget {
  @override
  _QrCodeCreateState createState() => _QrCodeCreateState();
}

class _QrCodeCreateState extends State<QrCodeCreate> {

  TextEditingController inputText=TextEditingController();
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
            ),
            MaterialButton(onPressed: (){

              setState(() {
                data=inputText.text;

              });
            },
            child: Text(
              'Generate'
            ),
            ),
            Center(
              child: QrImage(
                data: "$data",
                version: QrVersions.auto,
                size: 200.0,
              ),
            )

          ],
        ),
      ),


    );
  }
}
