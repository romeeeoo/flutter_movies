class Movie {
  const Movie({
    required this.title,
    required this.description,
    required this.poster,
    required this.topPosition,
    required this.rating,
    required this.released
  });

  final String title;
  final String description;
  final String poster;
  final int topPosition;
  final double rating;
  final int released;
}
