import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/sevices/data_service.dart';

class HomeBloc{
  final DataService service;
  
  HomeBloc({@required this.service});

  Future<AppColorName> getColorFromApiResponse() async{
    int _apiResponse = await service.getValue(); //* Service call
    AppColorName _colorNameFromApiRespose = AppColorName.values[_apiResponse];
    return _colorNameFromApiRespose; 
  }
}