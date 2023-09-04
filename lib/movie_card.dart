import 'package:flutter/material.dart';


class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.poster, required this.child,});

  final Widget child;
  final String poster;

  @override
  Widget build(context) {
    return Card(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(poster), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
