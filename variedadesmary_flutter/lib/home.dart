import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Variedades Mary',
        ),
        actions: [
          IconButton(icon: Icon(Icons.person_add_alt_sharp), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[],
        ),
      ),
      body: Text('Variedades Mary'),
    );
  }
}
