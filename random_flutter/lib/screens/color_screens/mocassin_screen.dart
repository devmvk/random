import 'package:flutter/material.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/widgets/back_button.dart';

class Mocassin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: AppColors.mocassin,
        child: Column(
          children: <Widget>[
            Expanded(child: Center(child: Text("Mocassin"),)),
            CustomBackButton()
          ],
        ),
      ),
    ));
  }
}