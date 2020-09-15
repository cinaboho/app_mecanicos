import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:app_mecanicos/FormPrueba.dart';

class FormReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new GradientBack(),
        new Positioned(
            bottom: 0.0,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: 470.0,
              color: Colors.white,
            )),
      ],
    );
  }
}

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        colors: [Color(0xFFffbb00), Color(0xFFf38c02)],
        begin: const FractionalOffset(1.0, 0.1),
        end: const FractionalOffset(1.0, 0.9),
      )),
      child: new Column(
        children: <Widget>[
          LogoCamaraImageAsset(),
          //new Stack(children: <Widget>[new MyCustomForm()])
        ],
      ),
    );
  }
}

class LogoCamaraImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logocamara.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 600.0,
      //height: 160.0,
      height: 160.0,
    );
  }
}
