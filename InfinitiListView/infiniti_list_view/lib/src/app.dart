import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
/* en la variable suggestions llama la lita de palabras del paquete*/
  final suggestions = <WordPair>[];

  final saved = <WordPair>[];

/*se pasa el argumento de WordPair, le pone nombre alargumento, 
del que luego vamos a utlizar sus propiedades*/
  ListTile buildList(WordPair pair) {
    // esto me sirve para saber si ya existe un pair guardado
    final bool alreadySaved = saved.contains(pair);

    return ListTile(
      title: Text(pair.first),
      subtitle: Text(pair.second),
      trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: Colors.redAccent),
      onTap: () {
        setState(
          () {
            if (alreadySaved) {
              saved.remove(pair);
            } else {
              saved.add(pair);
            }
          },
        );
      },
    );
  }

  @override
  /*se creo una nueva ventana desde la misma ventana principal mediante widgets, se hizo un .map
  de tipo listTile, para pasar lop que nos llega de datos a un widget listtile, para luego
  enviarselo a un listview*/
  Widget build(BuildContext context) {
    void pushSaved() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            final tiles = saved
                .map<ListTile>(
                  (pair) => ListTile(
                    title: Text(pair.first),
                  ),
                )
                .toList();
            return Scaffold(
              appBar: AppBar(
                title: const Text("Guardadas"),
              ),
              body: ListView(
                children: tiles,
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Infinita"),
        actions: [
          IconButton(onPressed: pushSaved, icon: const Icon(Icons.list))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          /* consula si el index tiene objetos y trae 10 registros del paquete de palabras,
          conla funcion de generador de palabras y tomar 10*/
          if (i >= suggestions.length) {
            suggestions.addAll(generateWordPairs().take(10));
          }
          return buildList(suggestions[i]);
        },
      ),
    );
  }
}
