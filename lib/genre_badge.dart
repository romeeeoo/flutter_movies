import 'package:flutter/material.dart';

class GenreBadge extends StatelessWidget {
  const GenreBadge({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Center(
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
            title,
            style: TextStyle(
              color: isSelected ? Colors.yellow : Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}
