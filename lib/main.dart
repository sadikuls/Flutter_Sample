import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWordState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // TODO: implement build
    return Text(wordPair.asPascalCase);
  }
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}
