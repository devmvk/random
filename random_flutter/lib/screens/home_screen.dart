import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_flutter/bloc/home_bloc.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/screens/color_controller_screen.dart';
import 'package:random_flutter/sevices/data_service.dart';

class HomePage extends StatelessWidget {
  final HomeBloc homeBloc;

  HomePage({this.homeBloc});

  static Widget view() {
    //* Consumes [DataService] object provided above MaterialApp
    //* So that we can feed this [DataService] object to [HomeBloc]
    return Consumer<DataService>(builder: (
      BuildContext context,
      DataService service,
      Widget child,
    ) {
      return Provider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(service: service),
        child: Consumer(builder: (
          BuildContext _,
          HomeBloc bloc,
          Widget child,
        ) {
          return HomePage(
            homeBloc: bloc,
          );
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ColorControllerScreen(
                    bloc: homeBloc,
                  ),
                ),
              );
            },
            child: Text("Go to random color screen", style: TextStyle(color: Colors.white),),
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
