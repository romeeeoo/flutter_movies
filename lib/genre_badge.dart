import 'package:flutter/material.dart';
import 'package:scroll_movies/genre.dart';

class GenreBadge extends StatelessWidget {
  const GenreBadge({
    super.key,
    required this.genre,
    required this.isSelected,
    required this.onTap,
  });

  final Genre genre;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 2,
                    color: isSelected ? Colors.yellow : Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 7,
                  ),
                  child: Text(
                    genre.name,
                    style: TextStyle(
                      color: isSelected ? Colors.yellow : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
