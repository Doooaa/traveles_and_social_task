import 'package:flutter/material.dart';
import 'package:traveles_and_social_task/error.dart';
import 'package:traveles_and_social_task/classes/posts.dart';
import 'package:traveles_and_social_task/screens/homeScreen.dart';
import 'package:traveles_and_social_task/screens/postsScreen.dart';




Route routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => HomePage(settings.arguments),
      );
    // case '/about':
    //   return MaterialPageRoute(
    //     builder: (context) => const AboutPage(),
    //   );
    case '/postScreen':
      return MaterialPageRoute(
        builder: (context) => postScreen(settings.arguments as List<Posts>),
      );
    case '/post-details':
      return MaterialPageRoute(
        builder: (context) =>
            ProductDetails(product: settings.arguments as Posts),
      );
    case '/Profile':
      return MaterialPageRoute(
        builder: (context) =>
            Profile(),
      );
  }
  return MaterialPageRoute(
    builder: (context) => const Error404(),
  );
}