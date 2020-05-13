import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metrorun/screens/home/front.dart';
import 'package:metrorun/screens/services/auth.dart';
import 'package:photo_view/photo_view.dart';

import 'map.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        //username to display in title
        title: Text(
            'Welcome',
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          )
        ),
        backgroundColor: Colors.orange,
        actions: <Widget>[

          FlatButton.icon(
            icon: Icon(
                Icons.person,
              color: Colors.blue[900],
            ),
            label: Text(
                'Logout',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue[900],
              )
            ),
            onPressed: () async {
              await _auth.signOut();
            },
          ),

        ],
      ),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
        DrawerHeader(
        child: Padding(
            padding: EdgeInsets.only(top:50.0),
        child: Text(
          //username
            'Account',
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue[900],
              fontSize: 30,
            )
        ),
        ),
        decoration: BoxDecoration(
          color: Colors.orange,

        ),
      ),

//              ListTile(
//                leading: Icon(Icon),
//                title: Text(
//                  'Cash and Points',
//                  style: TextStyle(fontSize:20.0),
//                ),
//                onTap: () {
//
//                },
//              ),

      ListTile(
        leading: Icon(Icons.train),
        title: Text(
          'Previous trips',
          style: TextStyle(fontSize:20.0),
        ),
        onTap: () {

        },
      ),

      SizedBox(height: 20.0),

      ListTile(
        leading: Icon(Icons.bookmark),
        title: Text(
          'Saved routes',
          style: TextStyle(fontSize: 20.0),
        ),
      ),

      SizedBox(height:20.0),

      ListTile(
        leading: Icon(Icons.edit),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize:20.0),
        ),
        onTap: () {

        },
      ),

      SizedBox(height:20.0),

      ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          'Settings',
          style: TextStyle(fontSize:20.0),
        ),
        onTap: () {
        },
      ),

              SizedBox(height: 300.0),

              ListTile(
                leading: Icon(Icons.save_alt),
                title: Text(
                  'Show QR Code',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),

            ],
        ),
      ),

      body: Container(
        child: Front(),

      ),

        floatingActionButton: Container(
            padding: EdgeInsets.only(bottom: 15.0),
            height: 80.0,
            width: 80.0,
            child: FittedBox(
              child: FloatingActionButton(
                  child: Icon(Icons.map),
                  backgroundColor: Colors.orange,
                  splashColor: Colors.yellowAccent,
                  foregroundColor: Colors.blue[900],
                  tooltip: 'View Metro Map',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MapDisplay())
                    );
                  }
              ),
            )
        )
    );
  }
}