import 'package:flutter/material.dart';

void main() => runApp(Miapp());

class Miapp extends StatelessWidget {
  const Miapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi primera app"),
        ),
        body: Column(
          children: <Widget>[
            const FlutterLogo(
              size: 100,
            ),
            const Text(
              "Mi aplicación en Flutter",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: const <Widget>[
                Expanded(
                    child: Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                )),
                Expanded(
                    child: Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 30.0,
                )),
                Expanded(
                    child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ))
              ],
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            Container(
              padding: const EdgeInsets.all(50),
              child: Image.asset("assets/flutter.jpg"),
              color: Colors.blue,
            ),
          ],
        ));
  }
}
