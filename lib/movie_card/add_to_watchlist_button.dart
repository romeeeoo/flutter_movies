import 'package:flutter/material.dart';

class AddToWatchlistButton extends StatelessWidget {
  const AddToWatchlistButton({super.key});

  @override
  Widget build(context) => Positioned(
        top: -5,
        left: -9,
        child: GestureDetector(
          onTap: () {},
          child: const Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.bookmark_sharp,
                color: Color.fromARGB(168, 37, 37, 37),
                size: 50,
              ),
              Positioned(
                top: 10,
                child: Icon(
                  Icons.add,
                  color: Color.fromARGB(213, 255, 255, 255),
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      );
}
