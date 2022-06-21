import 'package:flutter/material.dart';
import 'package:secondexam/routes/on_generate_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routess = Routess();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UBC',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routess.onGenerateRoutes,
      initialRoute: "/",
    );
  }
}
