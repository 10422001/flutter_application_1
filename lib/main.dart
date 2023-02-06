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
          body: MyNameGenerator(),
        ));
  }
}

class MyNameGenerator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyName();
}

class _MyName extends State<MyNameGenerator> {
  final _myNames = <String>[];
  final _hearted = <String>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to my random Name Generator')),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return Divider();
          }
          if (i ~/ 2 >= _myNames.length) {
            _myNames.addAll(_generateNames());
          }
          return _buildRow(_myNames[i ~/ 2]);
        });
  }

  Iterable<String> _generateNames() {
    List<String> myNames = [
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
      _wordGenerator.randomName(),
    ];
    return myNames;
  }

  Widget _buildRow(String myNam) {
    return ListTile(title: Text(myNam));
  }
}
