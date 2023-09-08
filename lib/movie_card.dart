import 'package:flutter/material.dart';
import 'package:scroll_movies/movie_detailed.dart';
import 'package:scroll_movies/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetailed(movie: movie),
          ),
        );
      },
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(movie.poster),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text(movie.title),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 255, 235, 59),
                child: Text(
                  movie.description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
