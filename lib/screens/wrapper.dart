import 'package:financial_App/models/user.dart';
import 'package:financial_App/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    // return either home or authenticate widget
  if (user == null) {
    return Authenticate();
  } else {
    return HomePage();
    }
  }
}