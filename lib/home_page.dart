import "package:flutter/material.dart";

class MovieCard extends StatelessWidget {

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        color: const Color.fromARGB(168, 89, 88, 88),
        height: 200,
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
