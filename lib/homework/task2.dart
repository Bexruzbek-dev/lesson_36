import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<TodoItem> todoItems = [
    TodoItem(title: 'Task 1', isCompleted: false),
    TodoItem(title: 'Task 2', isCompleted: false),
    TodoItem(title: 'Task 3', isCompleted: false),
  ];

  void toggleTodoStatus(int index) {
    setState(() {
      todoItems[index].isCompleted = !todoItems[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todoItems[index].title),
            trailing: Checkbox(
              value: todoItems[index].isCompleted,
              onChanged: (value) {
                toggleTodoStatus(index);
              },
            ),
          );
        },
      ),
    );
  }
}

class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({required this.title, required this.isCompleted});
}
