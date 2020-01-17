import 'package:financial_App/screens/tensorchatbotscreen/ChatBot.dart';
import 'package:financial_App/services/auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ok'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Bobby"),
              accountEmail: Text("bobby@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Bob"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Jack"),
                )
              ],
            ),
            ListTile(
              title: new Text("All Inboxes"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Bank Loan"),
              leading: new Icon(Icons.attach_money),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
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
      // body is the majority of the screen.
      body: Center(
        child: Text('Welcome to Tensor Financial App!',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontStyle: FontStyle.italic)),
      ),
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
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
