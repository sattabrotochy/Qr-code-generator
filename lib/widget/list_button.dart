import 'package:flutter/material.dart';
import 'package:qrcodegenerator/Screen/create_screen.dart';

Widget ListButton({
  BuildContext context,
  String name})
{
  return InkWell(
    onTap: ()
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QrCodeCreate()));
    },
    child: Container(
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.cyan[600],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.cyan.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 15,right: 15,top: 10),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          Image(
              height: 40,
              width: 40,
              image: AssetImage("assets/create_icon.png"))
        ],
      ),
    ),
  );
}