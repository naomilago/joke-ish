import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class Joke extends StatelessWidget {
  final List<Map<String, String>> jokes;
  final int indexJokes;
  final String jokeBody;

  const Joke(
      {required this.jokes,
      required this.indexJokes,
      required this.jokeBody,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: SizedBox(
            width: 360,
            child: Text(jokes[indexJokes][jokeBody] as String,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: HexColor(jokes[indexJokes]['color'] as String),
                ))));
  }
}
