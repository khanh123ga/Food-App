import 'package:flutter/material.dart';

class ConttainerButtttonmd extends StatelessWidget {
  final Color? bgcolor;
  final double? containerWith;
  final String itext;

  const ConttainerButtttonmd(
      {super.key, this.bgcolor, this.containerWith, required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWith,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor,
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
