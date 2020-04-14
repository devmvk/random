import 'package:custom_scroll/colors.dart';
import 'package:flutter/material.dart';

class Mocassin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(child: Text("Mocassin")),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.mocassin,
            borderRadius: BorderRadius.circular(16.0)
          ),
    );
  }
}