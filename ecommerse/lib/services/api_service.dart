import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/todo.dart';

class ApiService {
  final String baseUrl = "http://192.168.167.84/api/todos/";

  Future<List<Todo>> fetchTodos() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Todo.fromJson(item)).toList();
    } else {
      throw Exception("Failed to load todos");
    }
  }

  Future<void> createTodo(Todo todo) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: json.encode(todo.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception("Failed to create todo");
    }
  }

  Future<void> updateTodo(int id, Todo todo) async {
    final response = await http.put(
      Uri.parse("$baseUrl$id/"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(todo.toJson()),
    );
    if (response.statusCode != 200) {
      throw Exception("Failed to update todo");
    }
  }

  Future<void> deleteTodo(int id) async {
    final response = await http.delete(Uri.parse("$baseUrl$id/"));
    if (response.statusCode != 204) {
      throw Exception("Failed to delete todo");
    }
  }
}
