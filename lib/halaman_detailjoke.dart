import 'package:flutter/material.dart';
import 'package:joke_project/joke.dart';

class HalamanDetailJoke extends StatefulWidget {
  late final bool cekDeviceLayout;
  late final Joke joke;

  HalamanDetailJoke({
    required Key key,
    required this.cekDeviceLayout,
    required this.joke,
  }) : super(key: key);

  @override
  _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
}

class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(widget.joke?.setup ?? "Joke belum dipilih"),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(widget.joke?.punchline ?? "Tidak ada punchline"),
        ),
      ],
    );
    if (widget.cekDeviceLayout == true) {
      return Center(
        child: content,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.joke?.type ?? "No selected type"),
      ),
      body: Center(
        child: content,
      ),
      backgroundColor: Colors.orange,
    );
  }
}

class DetailListJoke extends StatelessWidget {
  late final Joke jokea;

  DetailListJoke({required this.jokea});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("job"),
      ),
      body: Column(children: <Widget>[
        Container(
          child: Center(child: Text(jokea.punchline,textAlign: TextAlign.center,)),
        )
      ]),
    );
  }
}
