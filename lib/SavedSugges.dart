import 'package:flutter/material.dart';

class SaveSugges extends StatelessWidget {
  final saved ;
  final biggerFont;
  const SaveSugges({Key? key, required this.saved, required this.biggerFont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    {
      final tiles = saved.map<Widget>(
            (pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: biggerFont,
            ),
          );
        },
      );
      final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(
        context: context,
        tiles: tiles,
      ).toList()
          : <Widget>[];

      return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Suggestions'),
        ),
        body: ListView(children: divided),
      );
    }
  }
}
