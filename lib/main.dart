import 'package:flutter/material.dart';
import 'package:word_generator/word_generator.dart';

void main() => runApp(MyApp());
WordGenerator _wordGenerator = WordGenerator();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'heyloApp',
        home: Scaffold(
          appBar: AppBar(title: Text('Welcome to my first App')),
          body: Center(child: Text(_wordGenerator.randomNoun())),
        ));
  }
}
