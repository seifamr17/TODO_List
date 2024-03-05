import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'models/tasks_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksProvider>(
      create: (context) => TasksProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
