import 'package:flutter/material.dart';
import 'package:joke_project/halaman_detailjoke.dart';
import 'package:joke_project/joke.dart';

import 'joke.dart';

class HalamanListJoke extends StatefulWidget {
   late final Joke pilihanJoke;
   late final ValueChanged<Joke> pilihanJokeCallback;

   HalamanListJoke({
     required Key key,
     required this.pilihanJokeCallback,
     required this.pilihanJoke
   }): super(key: key);
  @override
  _HalamanListJokeState createState() => _HalamanListJokeState();
}

class _HalamanListJokeState extends State<HalamanListJoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: jokeList.map((jokeList){
      return Container(
        child: ListTile(
          title: Text(
            jokeList.setup,
            style: TextStyle(color: Colors.black),
          ),
          onTap: () => widget.pilihanJokeCallback(jokeList),
          selected: widget.pilihanJoke == jokeList,

        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),shape: BoxShape.rectangle
        ),
      );
    }).toList());
  }
}
class ListJoke extends StatelessWidget {
  const ListJoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("daftar list"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            late final Joke joke = jokeList[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailListJoke(jokea: joke);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Text(joke.type)),
                    Expanded(
                        flex: 2,
                        child: Text(joke.setup)),
                    Expanded(
                        flex: 3,
                        child: Text(joke.punchline)),
                  ],
                ),
              ),
            );
          },
          itemCount: jokeList.length
      ),
    );
  }
}

