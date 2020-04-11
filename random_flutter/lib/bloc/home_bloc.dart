import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/sevices/data_service.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc{
  final DataService service;
  final BehaviorSubject<Color> _colorController =  BehaviorSubject<Color>();
  Stream<Color> colorStream;

  HomeBloc({@required this.service}){
    colorStream = _colorController.stream;
  }

  Future getColorFromApiResponse() async{
    int _apiResponse = await service.getValue(); //* Service call
    Color _colorValueFromApiRespose = AppColors.colors[_apiResponse];
    _colorController.add(_colorValueFromApiRespose); //* Pump value to the StreamBuilder on HomeScreen
  }

  dispose(){
    _colorController.close();
  }

}