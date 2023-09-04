import "package:flutter/material.dart";
import 'package:scroll_movies/movie_card.dart';
import 'package:scroll_movies/movie.dart';
import 'package:scroll_movies/movie_detailed.dart';


// const String movieDesc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.";
// const String moviePoster = "assets/images/1677116967_netflix.webp";


class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];

            return MovieCard(
              poster: movie.poster,
              child: ListTile(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailed(movie: movie),),);} 
                ),
            );
          }),
    );
  }

}

const movies = [
     Movie(title: "some movie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.", poster: "assets/images/1677116967_netflix.webp"), 
     Movie(title: "some movie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.", poster: "assets/images/1677116967_netflix.webp"), 
     Movie(title: "some movie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.", poster: "assets/images/1677116967_netflix.webp"), 
     Movie(title: "some movie", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non rhoncus libero. Phasellus id eros eu tortor malesuada sollicitudin.", poster: "assets/images/1677116967_netflix.webp"),
  ]; 




