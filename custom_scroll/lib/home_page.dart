import 'dart:math';

import 'package:custom_scroll/custom_scroll_physics.dart';
import 'package:custom_scroll/pages/mocassin.dart';
import 'package:custom_scroll/pages/salmon.dart';
import 'package:custom_scroll/pages/slate_blue.dart';
import 'package:custom_scroll/pages/something.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [Salmon(), Mocassin(), SlateBlue(),SomePage()];
  ScrollPhysics _physics;
  final _controller = PageController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.position.haveDimensions) {
        setState(() {
          var dimension =
              _controller.position.maxScrollExtent / (pages.length - 1);
          _physics = CustomScrollPhysics(customScrollExtent: 1*dimension);
        });
      }  
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pages.length,
      controller: _controller,
      physics: _physics,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: pages[index],        
        );
      },
    );
  }

  Color get randomColor =>
      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
}
