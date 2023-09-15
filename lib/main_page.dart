import 'package:flutter/material.dart';
import 'package:scroll_movies/common/widgets/screen_with_appbar.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/movie_card/movie_card.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    super.key,
    required this.genre,
    required this.onTap,
    required this.isSelected,
  });

  final Genre genre;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(context) => GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  genre.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Visibility(
                  visible: isSelected,
                  child: const Icon(
                    IconData(
                      0xe1f6,
                      fontFamily: 'MaterialIcons',
                    ),
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

// top 10 on IMDb
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) => ScreenWithAppBar(
      title: 'Top 10 on IMDb',
      pageContent: Column(
        children: [
          Container(
            height: 50,
            color: const Color.fromARGB(168, 37, 37, 37),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Color.fromARGB(174, 86, 86, 86),
              ),
              itemCount: movies.length,
              itemBuilder: (context, index) => MovieCard(
                movie: movies[index],
              ),
            ),
          ),
        ],
      ),
    );
}

const movies = [
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 1,
      genre: Genre.action),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 2,
      genre: Genre.drama),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 3,
      genre: Genre.fantasy),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 4,
      genre: Genre.other),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 5,
      genre: Genre.scienceFiction),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 6,
      genre: Genre.thriller),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 7,
      genre: Genre.action),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 8,
      genre: Genre.action),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 9,
      genre: Genre.action),
  Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 10,
      genre: Genre.comedy),
];

Iterable<Movie> filteredMovies(List<Genre> genreList) {
  if (genreList.isNotEmpty) {
    return movies.where((movie) => genreList.contains(movie.genre));
  } else {
    return movies;
  }
}
