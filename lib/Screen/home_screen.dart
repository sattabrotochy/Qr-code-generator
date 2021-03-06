import 'package:flutter/material.dart';
import 'package:qrcodegenerator/Screen/demo.dart';
import 'package:qrcodegenerator/Screen/qr_code_creatre_screen.dart';
import 'package:qrcodegenerator/widget/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
     appBar: AppBar(
       backgroundColor: Colors.cyan[600],
     ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.cyan,
         onPressed: ()
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateScreen()));
        },
          child: Image(
            height: 35,
            width: 35,
            image: AssetImage('assets/generator_icon.jpg'),
          )
      ),
      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                color: Colors.cyan[600],
                height: 50,
                child: Text('')),
            Text('')
          ],
        ),
      ),
     body: Container(
       child: Center(
         child: Image(
           image: AssetImage('assets/generator.jpg'),
         ),
       ),

     ),

    );
  }
}
