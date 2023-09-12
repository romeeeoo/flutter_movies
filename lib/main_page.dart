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
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
        Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
        Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
        Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
        Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
        Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/HD-wallpaper-godzilla-movies-movie-poster-godzilla-king-of-the-monsters-cyan-blue-vertical.jpg"),
      
  
];
