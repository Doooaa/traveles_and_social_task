import 'package:flutter/material.dart';
import 'package:traveles_and_social_task/routs.dart';

void main() {
  runApp(
    
    MaterialApp(
    onGenerateRoute: routeGenerator,
    initialRoute: "/",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}