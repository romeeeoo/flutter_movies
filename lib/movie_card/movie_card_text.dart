import 'package:flutter/material.dart';

class MovieCardText extends StatelessWidget {
  const MovieCardText(this.data, {this.isGrey = false, super.key});

  final String data;
  final bool isGrey;

  @override
  Widget build(context) {
    if (isGrey) {
      return Text(
        data,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      );
    } else {
      return Text(
        data,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      );
    }
  }
}
