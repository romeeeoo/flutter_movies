import 'package:flutter/material.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/screen_and_appbar.dart';

class MovieDetailed extends StatelessWidget {
  final Movie movie;
  final bool hasRouteBack;

  const MovieDetailed({
    this.hasRouteBack = true,
    required this.movie,
    super.key,
  });


  @override
  Widget build(context) {
    return ScreenWithAppBar(
        hasRouteBack: hasRouteBack,
        title: movie.title,
        pageContent: Column(
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
              child: Text(
                movie.description,
                softWrap: true,
              ),
            )
          ],
        ));
  }
}
