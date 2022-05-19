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
      debugShowCheckedModeBanner: false,
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
    
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Stack(
          alignment: const Alignment(-0.91, -0.2),
          children: <Widget> [
            AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFF202020),
              leading: const Icon(Icons.menu),
              centerTitle: true,
              title: Container(
                  //padding: const EdgeInsets.only(right: 40),
                  height: 38,
                  width: size.width /2.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFF181818),
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(color: const Color(0xFF313131))
                  ),
                  child: TextField(
                    maxLines: 1,
              decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: const TextStyle(
                    color: Color(0xFF888888)
                  ),
                  suffixIcon: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF313131),
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: const Icon(Icons.search, color: Colors.white,),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(10)
                  ),
            ),
                ),
              actions: <Widget>[
                 Container(
                   margin: const EdgeInsets.only(right: 60),
        width: 43,
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(2), // border width
          child: Container( // or ClipRRect if you need to clip the content
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF181818), // inner circle color
            ),
            child: Container(
              child: const IconButton(onPressed: null,
                    icon: Icon(Icons.mic, color: Colors.white,
                    )),
            ), // inner content
          ),
        ),
      ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: const IconButton(onPressed: null,
                    icon: Icon(Icons.video_camera_front_outlined, color: Colors.white,
                    size: 30,))
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: const IconButton(onPressed: null,
                    icon: Icon(Icons.apps, color: Colors.white,
                    size: 30,))
                ),
                Container(
                  padding: const EdgeInsets.only(right: 40),
                  child: const IconButton(onPressed: null,
                    icon: Icon(Icons.notifications_outlined, color: Colors.white,
                    size: 30,))
                ),
                Container(
                  padding: const EdgeInsets.only(right: 40),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage('https://yt3.ggpht.com/BQrR75WVBqShc-f-0mrpjtfNYuN38c_My7shzhgxpvPoZtu2pW8UHOtxAcCj2_8ByDus4exzmvQ=s88-c-k-c0x00ffffff-no-rj-mo',),
                    radius: 18,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 4),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  const Text(
                    'YouTube',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'calibri',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -2.5,
                      fontSize: 27
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0.5, -0.5),
                    child: const Text('ZW',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF888888),
                        fontSize: 10
                      ),
                      )
                  ),
                  
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
