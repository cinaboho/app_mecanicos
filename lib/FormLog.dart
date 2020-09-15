import 'package:app_mecanicos/Welcome.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[new Welcome()],
    ));
  }
}
