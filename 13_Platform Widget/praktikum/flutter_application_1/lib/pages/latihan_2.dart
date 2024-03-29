import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'MaterialApp'),
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
  List data = [
    {"username": "PurplePenguin22", "phone": "(555) 123-4567"},
    {"username": "GreenGiraffe99", "phone": "(555) 234-5678"},
    {"username": "SilverSunshine11", "phone": "(555) 345-6789"},
    {"username": "BlueButterfly44", "phone": "(555) 456-7890"},
    {"username": "GoldenDragonfly77", "phone": "(555) 567-8901"},
    {"username": "RedRainbow66", "phone": "(555) 678-9012"},
    {"username": "OrangeMeadow55", "phone": "(555) 789-0123"},
    {"username": "YellowNightfall33", "phone": "(555) 890-1234"},
    {"username": "BlackStarlight88", "phone": "(555) 901-2345"},
    {"username": "PinkMoonstone77", "phone": "(555) 012-3456"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        child: ListView(
          children: const [
            ListTile(
              title: Text('Home'),
              textColor: Color.fromARGB(255, 255, 255, 255),
            ),
            ListTile(
              title: Text('Settings'),
              textColor: Color.fromARGB(255, 255, 255, 255),
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              color: const Color.fromARGB(255, 48, 48, 48),
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      data[index]["username"].toString()[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index]["username"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          data[index]["phone"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: 'Option',
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
