import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(top: 1),
                  child: const Text(
                    'ArtLight Feed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Text(
                  'Todavia no estas siguiendo a ninguna noticia/persona',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 191, 105, 0),
          ),
          const Text(
            '0',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )
        ],
      ),
    );

    Color color = Theme.of(context).backgroundColor;

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Bienvenido a tu Feed, ahora mismo no estas '
        'siguiendo a ninguna actividad, por favor '
        'revisa la seccion de explorar para comenzar',
        softWrap: true,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            Color.fromARGB(255, 191, 105, 0), Icons.apps, 'EXPLORAR'),
        _buildButtonColumn(
            Color.fromARGB(255, 191, 105, 0), Icons.star_border, 'FAVORITOS'),
        _buildButtonColumn(
            Color.fromARGB(255, 191, 105, 0), Icons.newspaper, 'NOTICIAS'),
      ],
    );

    return MaterialApp(
      title: 'ArtLight',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        appBar: AppBar(
          title: const Text('ArtLight'),
          backgroundColor: Color.fromARGB(255, 191, 105, 0),
        ),
        body: ListView(
          children: [
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
