import 'package:meta/meta.dart';
import 'package:joke_project/joke.dart';

class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });
  late final int id;
  late final String type;
  late final String setup;
  late final String punchline;
}

final List<Joke> jokeList = <Joke>[
  Joke(
      id: 1,
      type: "general",
      setup: "How do you make tissue dance ?",
      punchline: "Damn!"),
  Joke(
      id: 2,
      type: "general",
      setup: "How do you make tissue dance ?",
      punchline: "Damn!"),
  Joke(
      id: 3,
      type: "general",
      setup: "How do you make tissue dance ?",
      punchline: "Damn!"),
  Joke(
      id: 4,
      type: "general",
      setup: "How do you make tissue dance ?",
      punchline: "Damn!"),
  Joke(
      id: 5,
      type: "general",
      setup: "How do you make tissue dance ?",
      punchline: "Damn!"),
];
