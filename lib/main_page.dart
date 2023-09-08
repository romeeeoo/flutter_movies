import "package:flutter/material.dart";
import 'package:scroll_movies/movie_card.dart';
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
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
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
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
  Movie(
      title: "some movie",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/1677116967_netflix.webp"),
];
