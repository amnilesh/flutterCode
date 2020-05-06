import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                // first row
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      'Nilesh',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 30.0,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      'from srmu',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 30.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                // second row
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      'Pooja',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 30.0,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      'from DAV pg collage',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 30.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                // second column
                new MyAssets(),
                // third column
                new Sum(),
                // fourth column
                new BookRaisedButton(),
              ],
            )));
  }
}

class MyAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/unnamed.png');
    Image flightImage = Image(image: assetImage, width: 50.0, height: 50.0);

    return Container(child: flightImage);
  }
}

class BookRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 50.0,
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
          color: Colors.white,
          elevation: 10.0,
          child: Text(
            'Click Here',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => alertDialog(context)),
    );
  }

  void alertDialog(BuildContext context) {
    var dialog = new AlertDialog(
      title: Text('demo'),
      content: Text('demo'),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}

class Sum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var first = 10;
    var second = 10;

    int result() {
      int result = first + second;
      return result;
    }

    return Container(
      child: Text(
        'Your result is : ${result()}',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    );
  }
}
