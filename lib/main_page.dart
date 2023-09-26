import 'package:flutter/material.dart';
import 'package:scroll_movies/common/widgets/screen_with_appbar.dart';
import 'package:scroll_movies/genre.dart';
import 'package:scroll_movies/genre_badge.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/movie_card/movie_card.dart';

// top 10 on IMDb
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Set<Movie> _filteredMovies = {};
  List<Genre> genres = Genre.values;
  final Set<Genre> _selectedGenres = {};

  @override
  void initState() {
    super.initState();
    _filteredMovies = Set<Movie>.from(_movies);
  }

  @override
  Widget build(context) => ScreenWithAppBar(
        title: 'Top 10 on IMDb',
        pageContent: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Genre.values
                    .map(
                      (genre) => GenreBadge(
                        genre: genre,
                        isSelected: _selectedGenres.contains(genre),
                        onTap: () {},
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  color: Color.fromARGB(174, 86, 86, 86),
                ),
                itemCount: _filteredMovies.length,
                itemBuilder: (context, index) => MovieCard(
                  movie: _filteredMovies.toList()[index],
                ),
              ),
            ),
          ],
        ),
      );

  final _movies = [
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 1,
      genre: Genre.action,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 2,
      genre: Genre.drama,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 3,
      genre: Genre.fantasy,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 4,
      genre: Genre.other,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 5,
      genre: Genre.scienceFiction,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 6,
      genre: Genre.thriller,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 7,
      genre: Genre.action,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 8,
      genre: Genre.action,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 9,
      genre: Genre.action,
    ),
    Movie(
      title: "One Piece. Большой куш",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.",
      poster: "assets/images/godzila.jpg",
      released: 2023,
      rating: 10.0,
      topPosition: 10,
      genre: Genre.comedy,
    ),
  ];
}
