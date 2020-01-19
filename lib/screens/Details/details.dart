import 'package:flutter/material.dart';
import 'package:financial_App/screens/tensorchatbotscreen/ChatBot.dart';
import 'package:financial_App/services/auth.dart';
import 'package:financial_App/screens/Details/reports.dart';
import 'package:financial_App/screens/home/morehome.dart';


class Details extends StatelessWidget {
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

      body: Center ( child: Form(
        child: Column(
          children: <Widget>[
            new TextFormField(
  decoration: InputDecoration(
    hintText: 'Enter your salary'
  ),
),
new TextFormField(
  decoration: InputDecoration(
    hintText: 'Enter your job'
  ),
),

new TextFormField(
  decoration: InputDecoration(
    hintText: 'Enter your age'
  ),
),

new OutlineButton(
  child: Text('Submit'),
          color: const Color(0xFFDA2A1A),
          onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Reports()),
          );
        },
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),

          
     ),
          ]
          
        ),

      ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFEC4435),
        tooltip: 'Chat with Tensor', // used by assistive technologies
        child: Icon(Icons.message),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePageDialogflow()),
          );
        },
      ),
  );

}
}