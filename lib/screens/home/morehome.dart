import 'package:flutter/material.dart';
import 'package:financial_App/screens/tensorchatbotscreen/ChatBot.dart';
import 'package:financial_App/services/auth.dart';

// class Home extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//     return HomePage();
//   }
// }

class HomePageMore extends StatelessWidget {
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
          Text(' SGD 4000 ', style: TextStyle(fontSize: 34.0, color: const Color(0xFFDA2A1A), fontWeight: FontWeight.bold)),
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
            leading: Icon(Icons.shopping_cart),
            title: Text('H&M'),
            subtitle: Text('19/1/2020'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD 25.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.hotel),
            title: Text('Rent'),
            subtitle: Text('26/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD 2500.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.phone),
            title: Text('Phone bill'),
            subtitle: Text('24/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD24.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Starbucks'),
            subtitle: Text('23/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.book),
            title: Text('Utilities'),
            subtitle: Text('20/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD100.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Chipotle'),
            subtitle: Text('18/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD23.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Boba'),
            subtitle: Text('18/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.local_grocery_store),
            title: Text('Groceries @ AEON'),
            subtitle: Text('15/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD100.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.phone_iphone),
            title: Text('Google Pixel'),
            subtitle: Text('10/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD300.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('McDonalds'),
            subtitle: Text('8/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD15.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Starbucks'),
            subtitle: Text('8/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.library_books),
            title: Text('Udemy'),
            subtitle: Text('5/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD46.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Boba'),
            subtitle: Text('3/12/2019'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('SGD16.00',style: TextStyle(color: const Color(0xFFED6A5E))),
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
            leading: Icon(Icons.fastfood),
            title: Text('Tony Ramas'),
            subtitle: Text('2/12/2019'),
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
            leading: Icon(Icons.local_grocery_store),
            title: Text('Groceries'),
            subtitle: Text('1/12/2019'),
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