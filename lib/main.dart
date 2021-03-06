import 'package:financial_App/services/auth.dart';
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'screens/Details/reports.dart';
import 'screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
          child: MaterialApp(
        title: 'HAHAH will be override so no point',
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Wrapper(),
      ),
    );
  }
}

// Hello world

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ok'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         elevation: 16.0,
//         child: Column(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text("Bobby"),
//               accountEmail: Text("bobby@gmail.com"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: Text("Bob"),
//               ),
//               otherAccountsPictures: <Widget>[
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Text("Jack"),
//                 )
//               ],
//             ),
//             ListTile(
//               title: new Text("All Inboxes"),
//               leading: new Icon(Icons.mail),
//             ),
//             Divider(
//               height: 0.1,
//             ),
//             ListTile(
//               title: new Text("Bank Loan"),
//               leading: new Icon(Icons.attach_money),
//             ),
//             ListTile(
//               title: new Text("Social"),
//               leading: new Icon(Icons.people),
//             ),
//             ListTile(
//               title: new Text("Promotions"),
//               leading: new Icon(Icons.local_offer),
//             ),
//           ],
//         ),
//       ),
//       // body is the majority of the screen.
//       body: Center(
//         child: Text('Welcome to Tensor Financial App!',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.italic)),
//       ),
//       backgroundColor: Colors.grey[900],
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'Chat with Tensor', // used by assistive technologies
//         child: Icon(Icons.message),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => HomePageDialogflow()),
//           );
//         },
//       ),
//     );
//   }
// }

// class HomePageDialogflow extends StatefulWidget {
//   HomePageDialogflow({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _HomePageDialogflow createState() => new _HomePageDialogflow();
// }

// class _HomePageDialogflow extends State<HomePageDialogflow> {
//   final List<ChatMessage> _messages = <ChatMessage>[];
//   final TextEditingController _textController = new TextEditingController();

//   Widget _buildTextComposer() {
//     return new IconTheme(
//       data: new IconThemeData(color: Theme.of(context).accentColor),
//       child: new Container(
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: new Row(
//           children: <Widget>[
//             new Flexible(
//               child: new TextField(
//                 controller: _textController,
//                 onSubmitted: _handleSubmitted,
//                 decoration:
//                     new InputDecoration.collapsed(hintText: "Send a message"),
//               ),
//             ),
//             new Container(
//               margin: new EdgeInsets.symmetric(horizontal: 4.0),
//               child: new IconButton(
//                   icon: new Icon(Icons.send),
//                   onPressed: () => _handleSubmitted(_textController.text)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void Response(query) async {
//     _textController.clear();
//     AuthGoogle authGoogle =
//         await AuthGoogle(fileJson: "assets/credentials.json").build();
//     Dialogflow dialogflow =
//         Dialogflow(authGoogle: authGoogle, language: Language.english);
//     AIResponse response = await dialogflow.detectIntent(query);
//     ChatMessage message = new ChatMessage(
//       text: response.getMessage() ??
//           new CardDialogflow(response.getListMessage()[0]).title,
//       name: "Tensor",
//       type: false,
//     );
//     setState(
//       () {
//         _messages.insert(0, message);
//       },
//     );
//   }

//   void _handleSubmitted(String text) {
//     _textController.clear();
//     ChatMessage message = new ChatMessage(
//       text: text,
//       name: "Bob",
//       type: true,
//     );
//     setState(
//       () {
//         _messages.insert(0, message);
//       },
//     );
//     Response(text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         centerTitle: true,
//         title: new Text("Tensor Chat Agent"),
//       ),
//       body: new Column(
//         children: <Widget>[
//           new Flexible(
//             child: new ListView.builder(
//               padding: new EdgeInsets.all(8.0),
//               reverse: true,
//               itemBuilder: (_, int index) => _messages[index],
//               itemCount: _messages.length,
//             ),
//           ),
//           new Divider(height: 1.0),
//           new Container(
//             decoration: new BoxDecoration(color: Theme.of(context).cardColor),
//             child: _buildTextComposer(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatMessage extends StatelessWidget {
//   ChatMessage({this.text, this.name, this.type});

//   final String text;
//   final String name;
//   final bool type;

//   List<Widget> otherMessage(context) {
//     return <Widget>[
//       new Container(
//         margin: const EdgeInsets.only(right: 16.0),
//         child: new CircleAvatar(child: Icon(Icons.details)),
//       ),
//       new Expanded(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             new Text(this.name,
//                 style: new TextStyle(fontWeight: FontWeight.bold)),
//             new Container(
//               margin: const EdgeInsets.only(top: 5.0),
//               child: new Text(text),
//             ),
//           ],
//         ),
//       ),
//     ];
//   }

//   List<Widget> myMessage(context) {
//     return <Widget>[
//       new Expanded(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             new Text(this.name, style: Theme.of(context).textTheme.subhead),
//             new Container(
//               margin: const EdgeInsets.only(top: 5.0),
//               child: new Text(text),
//             ),
//           ],
//         ),
//       ),
//       new Container(
//         margin: const EdgeInsets.only(left: 16.0),
//         child: new CircleAvatar(
//           child: new Text(
//             this.name[0],
//             style: new TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       child: new Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: this.type ? myMessage(context) : otherMessage(context),
//       ),
//     );
//   }
// }
