import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _controller.duration = Duration(milliseconds: 800);
    _animation = Tween<double>(begin: 4 * pi, end: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
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
        title: Text("Hello"),
      ),
      body: Center(
        child: Transform.rotate(
          angle: _animation.value,
          child: Text(
            "Hello World!",
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
    );
  }
}
