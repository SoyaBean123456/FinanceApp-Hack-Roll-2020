import 'package:flutter/material.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return either home or authenticate widget
    return Authenticate();

  }
}