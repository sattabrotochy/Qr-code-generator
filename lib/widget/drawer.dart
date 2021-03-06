
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawer()
{
  return Container(
    color: Colors.white,
    child: Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 2,),
            // UserAccountsDrawerHeader(
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //         // image: AssetImage(
            //         //  // 'asset/drawer_image.png',
            //         // ),
            //         fit: BoxFit.cover,
            //       ),
            //   ),
            // ),
            ListTile(
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => SaveList()));
              },
              hoverColor: Colors.cyan[600],
              title: Text('Favorite'),
              leading: Icon(
                Icons.favorite,
                color: Colors.cyan[600],
              ),
            ),
            ListTile(
              onTap: () {
               // Navigator.of(context).pop();
              //  Navigator.of(context).push(
               //     MaterialPageRoute(builder: (context) => HistoryList()));
              },
              hoverColor: Colors.cyan[600],
              title: Text('History'),
              leading: Icon(
                Icons.history,
                color: Colors.cyan[600],
              ),
            ),
            ListTile(
              onTap: () {
               // Share.share("https://play.google.com/store/apps/details?id=com.syntaxive.qrcodescanner");

              },
              title: Text("Share"),
              leading: Icon(Icons.share_rounded,color: Colors.cyan[600],),
            ),
            ListTile(
              onTap: (){

              },
              title: Text('Privacy policy'),
              leading: Icon(Icons.privacy_tip_outlined,color: Colors.cyan[600]),
            ),
          ],
        ),
      ),
    ),
  );
}