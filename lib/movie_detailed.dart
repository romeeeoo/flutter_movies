import 'package:flutter/material.dart';
import 'package:scroll_movies/common/widgets/screen_with_appbar.dart';
import 'package:scroll_movies/movie.dart';

class MovieDetailed extends StatelessWidget {
  const MovieDetailed({
    this.hasRouteBack = true,
    required this.movie,
    super.key,
  });

  final Movie movie;
  final bool hasRouteBack;

  @override
  Widget build(context) => ScreenWithAppBar(
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
            ),
          ],
        ),
      );
}
