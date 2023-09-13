import "package:flutter/material.dart";
import 'package:scroll_movies/movie_card/movie_card.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/screen_and_appbar.dart';

// top 10 on IMDb
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) {
    return ScreenWithAppBar(
          hasRouteBack: false,
          title: "Top 10 on IMDb", 
          pageContent: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            color: Color.fromARGB(174, 86, 86, 86),
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(
            movie: movies[index],)
      ),
    );
  }
}

const movies = [
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 1
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 2
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 3
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 4
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 5
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 6
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 7
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 8
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 9
      ),
 Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 10
      ),
];
