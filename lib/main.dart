import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app',
        theme: ThemeData(
          primaryColor: Colors.grey,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('TIG169 TODO'),
          ),
          floatingActionButton: FloatingActionButton(
            //onPressed:
            child: const Icon(Icons.add),
          ),
        ));
  }
}
