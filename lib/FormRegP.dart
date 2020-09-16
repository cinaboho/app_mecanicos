import 'package:flutter/material.dart';
import 'package:app_mecanicos/BackFormReg.dart';

void main() => runApp(FormRegP());

class FormRegP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final appTitle = 'Form Validation Demo';

    return MaterialApp(
      //title: appTitle,
      home: Scaffold(
          // appBar: AppBar(
          //   title: Text(appTitle),
          // ),
          //body: MyCustomForm(),
          body: new Stack(
        children: <Widget>[
          BackFormReg(),
          //MyCustomForm()
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top: 220.0),
            child: new Column(
              children: <Widget>[
                MyCustomForm()
                //button,
                //TuercaImageAsset()
              ],
            ),
          )
        ],
      )),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu nombre'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu nombre';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu apellido'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu apellido';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu teléfono'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu teléfono';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu correo'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu correo';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu username'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu username';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Igresa tu contraseña'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Porfavor ingresa tu contraseña';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Crear Cuenta'),
            ),
          ),
        ],
      ),
    );
  }
}
