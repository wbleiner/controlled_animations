import 'package:controlled_animations/pages/exercicio_2.dart';
import 'package:controlled_animations/pages/home_page.dart';
import 'package:controlled_animations/utils/app_routes.dart';
import 'package:flutter/material.dart';

import 'pages/exercicio_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRoutes.HOME: (_) => const HomePage(),
        AppRoutes.EXERCICIO1: (_) => const Exercicio1(),
        AppRoutes.EXERCICIO2: (_) => const Exercicio2(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
