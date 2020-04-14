import 'package:custom_scroll/colors.dart';
import 'package:flutter/material.dart';

class SlateBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Slate Blue")),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.slateBlue,
            borderRadius: BorderRadius.circular(16.0)
          ),
    );
  }
}