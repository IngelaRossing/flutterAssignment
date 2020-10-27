import 'package:flutter/material.dart';
  
void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      // A view of list that can change
      home: TodoList() 
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => TodoListState();
}

// A page where we display all of our items
class TodoListState extends State<TodoList> {

  List<String> todos = ['hi', 'oh', 'there', 'I', 'didnt'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TIG169 TODO'),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: go to AddItemPage
        child: const Icon(Icons.add),
      ),
      body: ListView.builder( 
        itemCount: todos.length, 
        itemBuilder: (BuildContext context,int index){ 
          return ListTile( 
            leading: Checkbox(value: false,), //do something
            title: Text("${todos[index]}"),
            trailing: Icon(Icons.clear), //do something
          ); 
        } 
      ),
    );
  }
}

