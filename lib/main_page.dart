import 'package:flutter/material.dart';
import 'package:scroll_movies/common/widgets/screen_with_appbar.dart';
import 'package:scroll_movies/genre.dart';
import 'package:scroll_movies/genre_badge.dart';
import 'package:scroll_movies/mocks.dart';
import 'package:scroll_movies/movie_card/movie_card.dart';

// top 10 on IMDb
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _filteredMovies = Mocks.movies;
  List<Genre> genres = Genre.values;
  final Set<Genre> _selectedGenres = {};

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
                        onTap: () {
                          if (_selectedGenres.contains(genre)) {
                            _selectedGenres.remove(genre);
                          } else {
                            _selectedGenres.add(genre);
                          }
                        
                          setState(() {
                            if (_selectedGenres.isEmpty) {
                              _filteredMovies = Mocks.movies;
                            } else {
                              _filteredMovies = Mocks.movies
                                  .where(
                                    (movie) =>
                                        _selectedGenres.contains(movie.genre),
                                  )
                                  .toList();
                            }
                          });
                        },
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
}
