import 'package:animated_lt/page/home.dart';
import 'package:animated_lt/page/sliver/sliver_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SliverPage.route: (context) => const SliverPage(),
        HomePage.route: (context) => const HomePage(),
      },
      initialRoute: SliverPage.route,
    );
  }
}
