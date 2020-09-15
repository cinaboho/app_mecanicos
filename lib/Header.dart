import 'package:app_mecanicos/Welcome.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final button = new InkWell(
      child: new Container(
        margin: new EdgeInsets.only(
          top: 230.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
                color: Color(0xFFf38b02),
                offset: new Offset(10.0, 10.0),
                blurRadius: 30.0)
          ],
          borderRadius: new BorderRadius.circular(30.0),
          color: Color(0xFFfeb800),
        ),
        child: new Center(
          child: new Text(
            "Empezar",
            style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Welcome(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top: 70.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "Encuentra\nen Menchany",
                  style: const TextStyle(
                      fontSize: 35.0,
                      color: Color.fromRGBO(255, 255, 254, 100),
                      fontWeight: FontWeight.w600),
                ),
                button,
                TuercaImageAsset()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TuercaImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/tuerca.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
