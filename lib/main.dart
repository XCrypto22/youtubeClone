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

    var tabSection = PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Stack(
          alignment: const Alignment(-0.91, -0.2),
          children: <Widget> [
            AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFF202020),
              leading: const Padding(
                padding: EdgeInsets.only(left: 10), 
              child: Icon(Icons.menu)),
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
              padding: const EdgeInsets.only(left: 15),
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
      );

    Widget menuSection = Container(
      width: 68,
      decoration: const BoxDecoration(
        color: Color(0xFF202020),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15,), // Home
          Column(
            children: [IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            )
          ),
          const Text('Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
            ]
        ),
        const SizedBox(height: 20,), // Explore
          Column(
            children: [IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.explore_outlined,
              color: Colors.white,
            )
          ),
          const Text('Explore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
            ]
        ),
        const SizedBox(height: 20,), // Shorts
          Column(
            children: [IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bolt,
              color: Colors.white,
            )
          ),
          const Text('Shorts',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
            ]
        ),
        const SizedBox(height: 20,), // Subscriptions
          Column(
            children: [IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.subscriptions,
              color: Colors.white,
            )
          ),
          const Text('Subscriptions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
            ]
        ),
        const SizedBox(height: 20,), // Library
          Column(
            children: [IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_library,
              color: Colors.white,
            )
          ),
          const Text('Library',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
            ]
        ),
        ],
      ),
    );

    Widget suggest(String name) {
      return Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                color: const Color(0xFF373737),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xFF4b4b4b))
              ),
              child: Text(name,
              style: const TextStyle(
                color: Colors.white
              ),),
            );
    }

    Widget suggestions = Container(
      padding: const EdgeInsets.only(left: 20),
      // width: size.width - 68, // wrong
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xFF202020),
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFF4b4b4b))
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: const Text('All'),
            ),
            const SizedBox(width: 15,),
            suggest('Music'),
            const SizedBox(width: 15,),
            suggest('Flutter'),
            const SizedBox(width: 15,),
            suggest('Python'),
            const SizedBox(width: 15,),
            suggest('Mixes'),
            const SizedBox(width: 15,),
            suggest('Beats'),
            const SizedBox(width: 15,),
            suggest('Live'),
            const SizedBox(width: 15,),
            suggest('Gaming'),
            const SizedBox(width: 15,),
            suggest('Trailers'),
            const SizedBox(width: 15,),
            suggest('Indie Music'),
            const SizedBox(width: 15,),
            suggest('Dance music'),
            const SizedBox(width: 15,),
            suggest('Freestyle Rap'),
            const SizedBox(width: 15,),
            suggest('Rhythm & Blues'),
            const SizedBox(width: 15,),
            const Icon(Icons.arrow_circle_right, color: Colors.white,)
            
          ],
        ),
      );

    Widget videoSection = Container(
      decoration: const BoxDecoration(
        color: Color(0xFF181818)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 280,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: Image.network('https://i.ytimg.com/vi/DL0Ix1lnC4w/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBxHnq_C6mxb4VZOETBZLhGtG89eg'),
                    ),
                    Row(
                      children: [
                        
                  ],
                    )
                  ]
                ),
              ),
            ],
          )
        ],
      )
    );

    return Scaffold(
      appBar: tabSection,
      body: Row(
        children: [
          menuSection,
          Expanded(
            child: Column(
              children: [
                suggestions,
                //videoSection,
                //_buildGrid(),
              ],
          ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
