import "package:flutter/material.dart";

var movieDesc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.";
const String moviePoster = "assets/images/1677116967_netflix.webp";

class MovieCard extends StatelessWidget {
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(moviePoster),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List _movies = [
    "movie1",
    "movie2",
    "movie3",
    "movie4",
    "movie5",
    "movie6"
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _movies.length,
          itemBuilder: (context, index) {
            return MovieCard();
          }),
    );
  }
}
