import 'package:custom_scroll/colors.dart';
import 'package:flutter/material.dart';

class SomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(child: Text("SomePage")),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.somthing,
            borderRadius: BorderRadius.circular(16.0)
          ),
    );
  }
}