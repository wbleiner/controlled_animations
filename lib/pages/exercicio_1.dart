import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  _Exercicio1State createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _rectangleTransform;
  late Animation _ovalTransform;
  late Animation _alignmentAnimation;

  @override
  void initState() {
    super.initState();
    const duration = Duration(seconds: 5);

    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    _rectangleTransform =
        Tween<double>(begin: 50, end: 200).animate(_controller);

    _ovalTransform = Tween<double>(begin: 50, end: 0).animate(_controller);

    _alignmentAnimation =
        Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 1'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_controller.isCompleted) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
          },
          child: Center(
            child: Align(
              alignment: _alignmentAnimation.value,
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                width: _rectangleTransform.value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_ovalTransform.value),
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
