import 'package:financial_App/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  //Constructor for the widget
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // text file state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/office_background 2.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.5),
          appBar: AppBar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            elevation: 0.0,
            title: Text('Sign in to Ka-Ching!', style: TextStyle(color: Colors.black),),
            actions: <Widget>[
              FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Register'),
                  onPressed: () {
                    widget.toggleView();
                  })
            ],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white.withOpacity(0.66),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Email'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                        decoration: InputDecoration(hintText: 'Password'),
                        validator: (val) => val.length < 6
                            ? 'Enter an password 6+ chars long'
                            : null,
                        //privacy gmail/password
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        }
                        //privacy password input
                        ),
                    SizedBox(height: 20.0),
                    OutlineButton(
                      color: const Color(0xFFDA2A1A),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.red),
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic result = await _auth
                              .signInWithEmailAndPassword(email, password);

                          if (result == null) {
                            setState(() =>
                                error = 'Could not sign in those credentials');
                          }
                        }
                      },
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
