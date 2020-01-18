import 'package:flutter/material.dart';
import 'package:financial_App/screens/tensorchatbotscreen/ChatBot.dart';
import 'package:financial_App/services/auth.dart';

// class Home extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//     return HomePage();
//   }
// }

class HomePage extends StatelessWidget {
  final AuthService _auth = AuthService();
  
Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF8E72), 
        title: Text('Dashboard'),
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

      body: SingleChildScrollView(child: Center(
           child: Container(

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
            child: Text('Your total expenditure for the past 28 days is: '),
          
          ),
          Text(' RM3456 ', style: TextStyle(fontSize: 34.0, color: const Color(0xFFDA2A1A), fontWeight: FontWeight.bold)),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Add Expenses', style: TextStyle(color: const Color(0xFFFF8E72))),
                onPressed: () { /* ... */ },
              ),
          
              
            ],
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
          padding: new EdgeInsets.all(15.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Starbucks'),
            subtitle: Text('26/11/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('RM16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
                onPressed: () { /* ... */ },
              ),
        ],
      ),
        ],
    ),
    
          ),
          
          
        ),
          
        
        ),

        new Padding(
          padding: new EdgeInsets.all(15.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Starbucks'),
            subtitle: Text('26/11/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('RM16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
                onPressed: () { /* ... */ },
              ),
        ],
      ),
        ],
    ),
    
          ),
          
          
        ),
          
        
        ),

        new Padding(
          padding: new EdgeInsets.all(15.0),
          child: Container(
            child:Card(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Starbucks'),
            subtitle: Text('26/11/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('RM16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
                onPressed: () { /* ... */ },
              ),
        ],
      ),
        ],
    ),
    
          ),
          
          
        ),
          
        
        )
               ],
             )
             
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