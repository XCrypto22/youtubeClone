import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Stack(
          children: <Widget> [
            AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFF202020),
              actions: <Widget>[ IconButton(
                // ignore: avoid_returning_null_for_void
                onPressed: () => null,
                icon: const Icon(Icons.menu),
                color: Colors.black,
              )],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('images/logo.png'),
                  ),
                  const Text(
                    'YouTube',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -2.5,
                      fontSize: 28
                    ),
                  )
                ]
              )
            )
          ],
        )
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Text('Hello World')
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
