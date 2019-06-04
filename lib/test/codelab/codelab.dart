import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random(); // 新增了这一行
    return MaterialApp(
        title: "Weclome to Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Wecome to Flutteer'),
            ),
            body: Center(
                child: RandomWords(),
            )
        )
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RandomWordsState();
  }

}

class RandomWordsState extends State<RandomWords>{
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    final WordPair wordPair = new WordPair.random();
//    return Text(wordPair.asPascalCase);
      return _buildSuggestions();
  }

  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext _context, int i){
        if(i.isOdd){
          return new Divider();
        }

        final int index = i ~/2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[index]);
      }
    );
  }


  Widget _buildRow(WordPair pair){
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

}
