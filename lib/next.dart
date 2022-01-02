import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Next extends StatelessWidget {
  final Function nextJoke;

  const Next({required this.nextJoke, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SizedBox(
        // width: 200,
        child: Text(
          'Next     ➡️',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: HexColor("#FEFEFE"),
          ),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor("#4A4D58"))),
      onPressed: (() => nextJoke()),
    );
  }
}
