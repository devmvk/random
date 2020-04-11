import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_flutter/screens/home_screen.dart';
import 'package:random_flutter/sevices/data_service.dart';

void main() => runApp(RandomApp());

class RandomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //* Provides [DataService] all the way down the app;ication widget tree
    return Provider<DataService>(
      create: (BuildContext _) => DataService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Random',
        home: SafeArea(child: HomePage.view())
      ),
    );
  }
}
