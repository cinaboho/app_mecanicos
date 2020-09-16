import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class MenuHome extends StatelessWidget {
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
        new Container(
            margin: new EdgeInsets.only(top: 250.0),
            child:
                new Column(children: <Widget>[PersonalMecanicoImageAsset()])),
        new Container(
            margin: new EdgeInsets.only(top: 450.0),
            child:
                new Column(children: <Widget>[RepuestosAccesoriosImageAsset()]))
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
          LogomNaranjaImageAsset(),
          //new Stack(children: <Widget>[new MyCustomForm()])
        ],
      ),
    );
  }
}

class LogomNaranjaImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logomNaranja.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 600.0,
      height: 160.0,
    );
  }
}

class PersonalMecanicooImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/personalmecanico.png');
    Image image = Image(image: assetImage);

    return Container(
      child: image,
      width: 600.0,
      height: 160.0,
    );
  }
}

class RepuestosyAccesoriosImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/repuestosyaccesorios.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 600.0,
      //height: 160.0,
      height: 160.0,
    );
  }
}

class PersonalMecanicoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/personalmecanico.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 600.0,
      //height: 160.0,
      height: 160.0,
    );
  }
}

class RepuestosAccesoriosImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/repuestosyaccesorios.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 600.0,
      //height: 160.0,
      height: 160.0,
    );
  }
}
