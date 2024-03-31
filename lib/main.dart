import 'package:flutter/material.dart';

main() {
  runApp(const App(key: Key('key_do_app'), titulo: 'Meu primeiro app'));
}

class App extends StatelessWidget {
  final String titulo;
  const App({super.key, required this.titulo});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Home Page",
        style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle:FontStyle.normal,
          fontSize: 22,
          letterSpacing: 1,
        )
        ),
        backgroundColor: Color(int.parse("7d60a1", radix: 16) + 0xFF000000),
      ),
      // const como Column ou Row ou n const como ListView
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Every Purchase\nWill be Made\nWith Pleasure",
              style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
              fontStyle:FontStyle.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text("Buy and Enjoy",
              textAlign: TextAlign.center,
              style:TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 22,
              fontStyle:FontStyle.normal,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
              },
              style:ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(int.parse("7d60a1", radix: 16) + 0xFF000000)),
              ),
              child: const Text("Start Shopping",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontStyle:FontStyle.normal,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  style:ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(width: 3,color: Color(int.parse("7d60a1", radix: 16) + 0xFF000000))
                    ))
                  ),
                  child: const Text("Learn More",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontStyle:FontStyle.normal,
                          fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style:ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(width: 3,color: Color(int.parse("7d60a1", radix: 16) + 0xFF000000))
                    ))
                  ),
                  child: const Text("  Login  ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontStyle:FontStyle.normal,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child:
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Color(int.parse("7d60a1", radix: 16) + 0xFF000000),
              ),
              child: Icon(Icons.home,color: Colors.white,),
              ),
          ),
      ),
    );
  }
}
