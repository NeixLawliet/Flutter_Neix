import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Neix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Neix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 219,
              width: 249,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("hero.png"))),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Ussername",
                      border: OutlineInputBorder(borderSide: BorderSide.none))),
              height: 40,
              width: 286,
              decoration: BoxDecoration(
                color: Color.fromARGB(227, 227, 227, 227),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(borderSide: BorderSide.none))),
              height: 40,
              width: 286,
              decoration: BoxDecoration(
                color: Color.fromARGB(227, 227, 227, 227),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage2()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                height: 40,
                width: 286,
                decoration: BoxDecoration(
                  color: Color.fromARGB(216, 0, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // TextButton(
            //     onPressed: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => MainPage2()));
            // },
            //     child: const Text('Pindah Halaman'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
