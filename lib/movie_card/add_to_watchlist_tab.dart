import 'package:flutter/material.dart';

class AddToWatchlistTab extends StatelessWidget {
  const AddToWatchlistTab({super.key});

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
                IconData(0xe7f2, fontFamily: 'MaterialIcons'),
                color: Color.fromARGB(168, 37, 37, 37),
                size: 50,
              ),
              Positioned(
                top: 10,
                child: Icon(
                  IconData(0xe047, fontFamily: 'MaterialIcons'),
                  color: Color.fromARGB(213, 255, 255, 255),
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      );
}
