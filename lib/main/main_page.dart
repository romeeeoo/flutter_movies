import "package:flutter/material.dart";
import 'package:scroll_movies/movie_card.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/movie_detailed.dart';

// const String movieDesc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.";
// const String moviePoster = "assets/images/1677116967_netflix.webp";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(
            movie: movies[index],
          ),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(
          IconData(
            0xf570,
            fontFamily: 'MaterialIcons',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        title: const Text(
          "Top 10 on IMDb this week",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Icon(
              IconData(0xe402, fontFamily: 'MaterialIcons'),
                     ),
           ),
        ],
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
