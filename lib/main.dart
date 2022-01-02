import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import './joke.dart';
import './punchline.dart';
import './next.dart';

void main() {
  runApp(const JokeIsh());
}

class JokeIsh extends StatefulWidget {
  const JokeIsh({Key? key}) : super(key: key);

  @override
  _JokeIshState createState() => _JokeIshState();
}

class _JokeIshState extends State<JokeIsh> {
  static const _jokes = [
    {
      'setup': 'Hear about the new restaurant called Karma?',
      'punchline': 'There\'s no menu: You get what you deserve.',
      'color': 'E95959'
    },
    {
      'setup':
          'I thought I had illegal software in my fridge but then I realized...',
      'punchline': 'It is open sauce',
      'color': '9E58B0'
    },
    {
      'setup': 'What do you get when you cross-breed a shark and a cow?',
      'punchline': 'I have no idea but I wouldn\'t try milking it.',
      'color': '6FE3B9'
    },
    {
      'setup':
          'How many Buzzfeed writers does it take to turn on an electric chair?',
      'punchline': 'Ten. But number four will shock you.',
      'color': '2CC1B8'
    },
    {
      'setup':
          'I tried to make a clock with no battery for the digital clock competition',
      'punchline': 'but it didn\'t count.',
      'color': '99B058'
    },
    {
      'setup': 'I herd that a bunch of cows were fed laxatives by mistake.',
      'punchline': 'Turns out it was a big load of bullshit.',
      'color': 'E36FA5'
    },
    {
      'setup': 'Why is that airbender sad?',
      'punchline': 'I don\'t know! He is having an Elemental breakdown',
      'color': 'E9CA59'
    },
    {
      'setup': 'What do you call a gorilla with a banana in each ear?',
      'punchline': 'Whatever you want, he can\'t hear you.',
      'color': '5886B0'
    },
    {
      'setup': 'I\'m gonna cast an evil spell',
      'punchline': 'E-V-I-L',
      'color': 'E3A76F'
    },
    {
      'setup':
          'I was walking across the road and someone opened their window and threw a block of cheddar at me',
      'punchline': 'I thought to my self,   “Well that wasn\'t very mature.',
      'color': '2CA7C1'
    },
    {
      'setup': 'I ate an expired can of alphabet soup...',
      'punchline':
          'Now I have severe cramps in my vowels and I\'ve been in-consonant all day',
      'color': '58B09B'
    },
    {
      'setup': 'Roses are red,violets are blue',
      'punchline': 'If you were expecting a generic meme f*ck you',
      'color': 'E95959'
    },
    {
      'setup': 'My uncle prayed to Gosh to solve all his family\'s problems',
      'punchline':
          'Gosh answered his prayers. \n My uncle\'s funeral is next week.',
      'color': '9E58B0'
    },
    {
      'setup': 'To the creator of autocorrect',
      'punchline': 'You can go to hello!',
      'color': 'C5E36F'
    },
    {
      'setup': 'I would make a bread joke but...',
      'punchline': 'Would would I *GRAIN* from it?',
      'color': '2CC1B8'
    },
    {
      'setup': 'Why do programmers wear glasses?',
      'punchline': 'Because they need to C#',
      'color': '99B058'
    },
    {
      'setup': 'What\'s the difference between a school bus and a cactus?',
      'punchline': 'A cactus keeps the little pricks on the outside.',
      'color': 'E9CA59'
    },
    {
      'setup': 'Why is crucified Jesus always depicted with six-pack abs?',
      'punchline': 'He did CrossFit.',
      'color': '2CA7C1'
    },
    {
      'setup': 'How do construction workers party?',
      'punchline': 'They raise the roof.',
      'color': 'E3A76F'
    },
    {
      'setup': 'What is the most used language in programming?',
      'punchline': 'Profanity.',
      'color': '6FE3B9'
    },
    {
      'setup': 'What do you call crystal clear urine?',
      'punchline': '1080p.',
      'color': '9E58B0'
    },
    {
      'setup': 'How did you make your friend rage?',
      'punchline':
          'I implemented a greek question mark in their JavaScript code.',
      'color': '5886B0'
    },
    {
      'setup': 'How does a Jewish person make tea?',
      'punchline': 'Hebrews it.',
      'color': 'E36FA5'
    },
    {
      'setup':
          'What do you get if you lock a monkey in a room with a typewriter for 8 hours?',
      'punchline': 'A regular expression.',
      'color': '58B09B'
    },
    {
      'setup': 'Why did the programmer jump on the table?',
      'punchline': 'Because debug was on his screen.',
      'color': 'C5E36F'
    }
  ];

  int _indexJokes = 0;
  String _jokeBody = 'setup';

  void _showPunchline() {
    setState(() {
      if (_jokeBody == 'setup') {
        _jokeBody = 'punchline';
      } else {
        _jokeBody = 'setup';
      }
    });
  }

  void _nextJoke() {
    setState(() {
      _jokeBody = 'setup';
      _indexJokes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke-ish',
      home: Scaffold(
          backgroundColor: HexColor('#FFF3F1'),
          appBar: AppBar(
              title: Align(
                alignment: Alignment.center,
                child: Text(
                  'Joke-ish',
                  style: TextStyle(
                    color: HexColor('#F5FFF0'),
                  ),
                ),
              ),
              backgroundColor: HexColor('#4A4D58')),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Joke(
                indexJokes: _indexJokes,
                jokeBody: _jokeBody,
                jokes: _jokes,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Punchline(
                    showPunchline: _showPunchline,
                    jokeBody: _jokeBody,
                  ),
                  Next(
                    nextJoke: _nextJoke,
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}
