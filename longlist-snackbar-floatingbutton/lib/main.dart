// onjective : implimenting long list

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'demom App',
    home: Scaffold(
      appBar: AppBar(),
      body: elementView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('fab clicked ');
        },
        child: Icon(Icons.add),
        tooltip: 'hello',
      ),
    ),
  ));
}

// show scanck bar

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(content: Text(' $item is clicked'));

  Scaffold.of(context).showSnackBar(snackBar);
}



// creating data source for long list
List elementDataSource() {
  var item = new List.generate(100, (i) => 'Item $i');
  return item;
}

// wrap each element into widget

Widget elementView() {
  var listItem = elementDataSource();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItem[index]),
      leading: Icon(Icons.access_alarm),
      onTap: () {
        //debugPrint('${listItem[index - 1]} is tapped');
        showSnackBar(context, listItem[index]);
      },
    );
  });
  return listView;
}
