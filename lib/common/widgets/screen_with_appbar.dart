import 'package:flutter/material.dart';

class ScreenWithAppBar extends StatelessWidget {
  const ScreenWithAppBar({
    required this.title,
    required this.pageContent,
    this.pageContentPadding = 0,
    super.key,
  });

  final String title;
  final Widget pageContent;
  final double pageContentPadding;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: pageContentPadding),
          child: pageContent,
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(253, 29, 29, 29),
          title: Text(title),
          leading: Navigator.canPop(context) ? const _BackButton() : null,
        ),
      );
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      );
}
