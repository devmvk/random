import 'package:custom_scroll/colors.dart';
import 'package:flutter/material.dart';

class Salmon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Center(child: Text("Salmon")),
      decoration: BoxDecoration(
        color: AppColors.salmon,
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}
