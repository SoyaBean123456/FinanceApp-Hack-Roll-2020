import 'package:flutter/material.dart';
import 'package:financial_App/screens/tensorchatbotscreen/ChatBot.dart';
import 'package:financial_App/services/auth.dart';
import 'package:financial_App/screens/home/morehome.dart';
class Reports extends StatelessWidget {
  final AuthService _auth = AuthService();
  
Widget build(BuildContext context) {
  return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF8E72), 
        title: Text('My Details'),
      ),
      

      drawer: Drawer(
        elevation: 16.0,
        
        child: Column(
          
          children: <Widget>[
            new Container(
              color: const Color(0xFFDA2A1A),
              child: UserAccountsDrawerHeader(
              
              accountName: Text("Niki"),
              accountEmail: Text("niki@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Niki"),
              ),
              
            ),
            ),

            ListTile(
              title: new Text("Dashboard"),
              leading: new Icon(Icons.home),
              onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePageMore()),
          );
              }
            ),
            ListTile(
              title: new Text("Analytics"),
              leading: new Icon(Icons.pie_chart),
            ),
            ListTile(
              title: new Text("My Details"),
              leading: new Icon(Icons.person),
            ),
            ListTile(
              title: new Text("Notifications"),
              leading: new Icon(Icons.notifications),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Smart Buys"),
              leading: new Icon(Icons.attach_money),
            ),
            ListTile(
              title: new Text("Settings"),
              leading: new Icon(Icons.settings),
            ),
          
            ListTile(
              title: new Text("Sign out"),
              leading: new Icon(Icons.exit_to_app),
              onTap: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),

      body:  SingleChildScrollView(child: Center(
        child: Column(
          children: <Widget>[
            new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/dashboard.png'),),
           ),
        ),
          new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.44.29.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.44.42.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.44.48.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.44.55.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.45.01.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.45.11.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.45.17.png'),),
           ),
        ),
        new Padding(
           padding: new EdgeInsets.all(20.0),
           child: Container(
             child: Image(image: AssetImage('assets/WhatsApp Image 2020-01-19 at 11.46.46.png'),),
           ),
        ),

          ],
             
        )
        
      ),
  ),
  );
}
}