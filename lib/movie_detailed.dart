import 'package:flutter/material.dart';
import 'package:scroll_movies/movie.dart';

class MovieDetailed extends StatelessWidget {
  const MovieDetailed({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(movie.poster),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(32),
          child: const Text(
            movie.description,
            softWrap: true,
  ),
);
      ],
    ));
  }
}


