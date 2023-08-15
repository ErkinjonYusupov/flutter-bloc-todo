import 'package:flutter/material.dart';
import 'package:flutter_bloc_todo/models/task.dart';
import 'blocs/bloc_exports.dart';

import 'package:flutter_bloc_todo/screens/home.dart';
import 'package:flutter_bloc_todo/screens/tasks_screen.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc()..add(AddTask(task: Task(title: 'title'))),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(child: TasksScreen()),
      ),
    );
  }
}
