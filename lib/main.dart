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

class Todo {
  final String task;
  final bool finished;

  Todo(this.task, this.finished);
}

class TodoList extends StatefulWidget {
  @override
  createState() => TodoListState();
}

// A page where we display all of our items
class TodoListState extends State<TodoList> {

  List<Todo> todos = [];

  TodoListState() {
    todos.add(Todo('Bake', false));
    todos.add(Todo('Eat', false));
    todos.add(Todo('Poop', true));
    todos.add(Todo('Dance', false));
  }
  
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
            leading: Checkbox(value: todos[index].finished,), //do something
            title: Text(todos[index].task),
            trailing: Icon(Icons.clear), //do something
          ); 
        } 
      ),
    );
  }
}

