import 'package:controlled_animations/components/ExpansionTileCustom.dart';
import 'package:controlled_animations/data/dummy_data.dart';
import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  _Exercicio2State createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  final data = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 2'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ExpansionTileCustom(
          title: data[index].title,
          content: data[index].content,
        ),
      ),
    );
  }
}
