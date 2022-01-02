import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Punchline extends StatelessWidget {
  final Function showPunchline;
  final String jokeBody;

  const Punchline(
      {required this.showPunchline, required this.jokeBody, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 32),
        child: ElevatedButton(
          child: SizedBox(
            // width: 200,
            child: Text(
              (jokeBody == 'setup') ? '🤡     Punchline' : '📢     Setup',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: HexColor("#FEFEFE"),
              ),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(HexColor("#4A4D58"))),
          onPressed: (() => showPunchline()),
        ));
  }
}
