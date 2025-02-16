import 'package:flutter/material.dart';
import 'services/api_service.dart';
import 'models/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final ApiService apiService = ApiService();
  late Future<List<Todo>> futureTodos;

  @override
  void initState() {
    super.initState();
    futureTodos = apiService.fetchTodos();
  }

  void _fetchTdod(){
    setState(() {
      futureTodos = apiService.fetchTodos();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: FutureBuilder<List<Todo>>(
        future: futureTodos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Column(
              children: [
                const SizedBox(height: 200,),
                Text("Something went wrong${snapshot.error}"),
                const SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: _fetchTdod,
                    icon: const Icon(Icons.refresh,size: 30,))
              ],
            ));
          } else if (snapshot.hasData) {
            final todos = snapshot.data!;
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(todo.title),
                  subtitle: Text(todo.description),
                  trailing: Checkbox(
                    value: todo.isCompleted,
                    onChanged: (value) {
                      setState(() {
                        todo.isCompleted = value!;
                      });
                    },
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text("No todos found"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add logic to create a new todo
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
