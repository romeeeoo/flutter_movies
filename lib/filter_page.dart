// import 'package:flutter/material.dart';
// import 'package:scroll_movies/common/widgets/screen_with_appbar.dart';
// import 'package:scroll_movies/movie.dart';



// class FilterPage extends StatefulWidget {
//   const FilterPage({super.key});

//   @override
//   State createState() => _FilterPageState();
// }

// class _FilterPageState extends State<FilterPage> {

//   List<Genre> genres = Genre.values;

//   List<bool> selectedGenres = List.filled(Genre.values.length, false);

//   @override
//   Widget build(context) {
//     return ScreenWithAppBar(
//       title: 'Filter',
//       pageContent: Column(children: [
//         Expanded(
//             child: ListView.separated(
//           separatorBuilder: (context, index) => const Divider(
//             height: 1,
//             color: Color.fromARGB(174, 86, 86, 86),
//           ),
//           itemCount: Genre.values.length,
//           itemBuilder: (context, index) {
//             return GenreCard(
//               genre: genres[index],
//               isSelected: selectedGenres[index],
//               onTap: () {
//                 setState(() {
//                   selectedGenres[index] = !selectedGenres[index];
//                 });
//               },
//             );
//           },
//         ))
//       ]),
//       hasRouteBack: true,
//     );
//   }
// }
