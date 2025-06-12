import 'package:flutter/material.dart';
import 'package:todo_app/pages/Home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  // initialize the hive

  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('todo_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
