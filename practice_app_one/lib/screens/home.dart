import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text('Spice Jet')),
                  Expanded(child: Text('From Mumbai to Delhi')),
                ],
              ),
              Row(children: <Widget>[
                Expanded(child: Text('Spice Jet')),
                Expanded(child: Text('From Mumbai to Delhi')),
              ]),
              Button(),
              Load(),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(top: 20.0),
      height: 50.0,
      child: RaisedButton(
          color: Colors.lightGreen,
          elevation: 6.0,
          child: Text('Submit'),
          onPressed: () {
            // code here
            performAction(context);
          }),
    );
  }

  void performAction(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text('Hi'),
      content: Text('You have Clicked Me'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   AssetImage assetImage = AssetImage('images/one.png');
   Image image = Image(image: assetImage, width: 200,height: 200,);
   return Container(child: image);

  }
}
