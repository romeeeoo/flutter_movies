import 'package:flutter/material.dart';

class ScreenWithAppBar extends StatelessWidget {
  final String title;
  final Widget pageContent;
  final double pageContentPadding;
  final bool hasRouteBack;
   Widget? leading;

  ScreenWithAppBar({
    required this.title,
    required this.pageContent,
    this.pageContentPadding = 0,
    required this.hasRouteBack,
    super.key,
  });

  Widget? buildLeading(context) {
    if (hasRouteBack == true) {
      return leading = GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          IconData(0xf571,
              fontFamily: 'MaterialIcons', matchTextDirection: true),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: pageContentPadding,
        ),
        child: pageContent,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(253, 29, 29, 29),
        title: Text(title),
        leading: buildLeading(context),
      ),
    );
  }
}
