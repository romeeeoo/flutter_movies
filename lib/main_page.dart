import "package:flutter/material.dart";
import 'package:scroll_movies/movie_card.dart';
import 'package:scroll_movies/movie.dart';

const movieDesc =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.";
const String moviePoster = "assets/images/1677116967_netflix.webp";


class MainPage extends StatefulWidget{
  const MainPage({super.key})

  @override
  _MainPageState createState()=> _MainPageState();
}

class _MainPageState extends State<MainPage>{
  List <Movie> movies = [
    const Movie(title: "some movie", description: movieDesc, poster: moviePoster), 
    
  ]; 

  @override
  Widget build(context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];

            return const MovieCard(
              poster: movie.poster
              child: ListTile(
                onTap: Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailed(movie:movie),
                  ),
                );
                ),
            );
          }),
    );
  }
}


// class MovieDetailed extends StatelessWidget{
  
// }



