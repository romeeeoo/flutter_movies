import 'package:flutter/material.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/movie_card/add_to_watchlist_button.dart';
import 'package:scroll_movies/movie_detailed.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(context) => GestureDetector(
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MovieDetailed(movie: movie),
            ),
          ),
        child: Container(
          color: const Color.fromRGBO(23, 23, 23, 1),
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset(movie.poster),
                    const AddToWatchlistButton(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          '${movie.topPosition}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star_rounded,
                              color: Color.fromARGB(255, 230, 199, 25),
                              size: 21,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              '${movie.rating}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Text(
                              '${movie.released}-',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Text(
                          movie.genre.name,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
