import 'package:flutter/material.dart';

class MovieCardText extends StatelessWidget {
  const MovieCardText(this.data, {this.isGrey = false, super.key});

  final String data;
  final bool isGrey;

  @override
  Widget build(context) => Text(
        data,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: isGrey ? Colors.grey : Colors.white,
          fontSize: 16,
        ),
      );
}
