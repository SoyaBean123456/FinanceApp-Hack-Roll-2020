import 'package:flutter/material.dart';
import 'package:financial_App/screens/home/morehome.dart';
import 'package:financial_App/services/auth.dart';

class AddExpenses extends StatelessWidget {
  final AuthService _auth = AuthService();
  
Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF8E72), 
        title: Text('Add Daily'),
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

      body: SingleChildScrollView(child: Container(

             child: Column(
               children: <Widget>[
                new Padding(
          padding: new EdgeInsets.all(20.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.all(20.0),
            child: Text(' Title ', style: TextStyle(fontSize: 34.0, color: const Color(0xFFDA2A1A), fontWeight: FontWeight.bold)),
          
          ),
          Padding(
            padding: new EdgeInsets.all(20.0),
            child:
          TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'name of item, shop, etc...'
  ),
),
          ),
        ],
      ),
               
            ),
            decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
        ),
      ]),
          ),
                ),

                new Padding(
          padding: new EdgeInsets.all(20.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.all(20.0),
            child: Text(' Amount ', style: TextStyle(fontSize: 34.0, color: const Color(0xFFDA2A1A), fontWeight: FontWeight.bold)),
          
          ),
          Padding(
            padding: new EdgeInsets.all(20.0),
            child:
          TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'how much is it?'
  ),
),
          ),
        ],
      ),
               
            ),
            decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
        ),
      ]),
          ),
                ),

                new Padding(
          padding: new EdgeInsets.all(20.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.all(20.0),
            child: Text(' Category ', style: TextStyle(fontSize: 34.0, color: const Color(0xFFDA2A1A), fontWeight: FontWeight.bold)),
          
          ),
          Padding(
            padding: new EdgeInsets.all(20.0),
            child:
          TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'food, bills, etc...'
  ),
),
          ),
        ],
      ),
               
            ),
            decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
        ),
      ]),
          ),
                ),
                new OutlineButton(
                   child: Text('Add'),
          color: Colors.white,
          onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePageMore()),
          );
        },
          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          borderSide: BorderSide(color: const Color(0xFFDA2A1A)),
                ),
               ],
             ),
      ),
      ),

      

               

    );
}
}