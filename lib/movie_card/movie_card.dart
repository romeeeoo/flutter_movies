import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:scroll_movies/movie_detailed.dart';
import 'package:scroll_movies/movie.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieDetailed(movie: movie),
          ),
        );
      },
      child: Container(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Stack(
                children: [
                  Image.asset(movie.poster),
                  Positioned(
                    top: -5,
                    left: -9,
                    child: GestureDetector(
                      onTap: (){},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            IconData(0xe7f2, fontFamily: 'MaterialIcons'),
                            color: Color.fromARGB(168, 37, 37, 37),
                            size: 50,
                            ),
                          Positioned(
                            top: 10,
                            child: Icon(
                              IconData(0xe047, fontFamily: 'MaterialIcons'),
                              color: Color.fromARGB(213, 255, 255, 255),
                              size: 25
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Column(
//             children: [
//               Container(
//                 color: Colors.red,
//                 child: Text(movie.title),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: const Color.fromARGB(255, 255, 235, 59),
//                 child: Text(
//                   movie.description,
//                 ),
//               ),
//             ],
//           ),