// ignore: file_names
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard({required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget ? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          // ignore: sort_child_properties_last
          child: cardChild,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}
