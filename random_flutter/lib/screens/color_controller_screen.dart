import 'package:flutter/material.dart';
import 'package:random_flutter/bloc/home_bloc.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/screens/color_screens/screens.dart';

class ColorControllerScreen extends StatelessWidget {
  final HomeBloc bloc;

  ColorControllerScreen({@required this.bloc});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppColorName>(
      future: bloc.getColorFromApiResponse(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          switch (snapshot.data) {
            case AppColorName.salmon:
              return Salmon();
              break;
            case AppColorName.mocassin:
              return Mocassin();
              break;
            case AppColorName.deepSkyBlue:
              return DeepSkyBlue();
              break;
            case AppColorName.slateBlue:
              return SlateBlue();
              break;
            case AppColorName.springGreen:
              return SpringGreen();
              break;
            default: return Container();
          }
        }
        else{
          return Scaffold(
            body: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      } 
    );
  }
}