import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    final titles = ['Bike', 'Boat', 'Bus'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
              child: ListTile(
                  leading: Icon(icons[nomor]),
                  title: Text(titles[nomor]),
                  onTap: () {
                    setState(() {
                      titles.removeAt(nomor);
                    });
                  }));
        },
      ),
      // children: const [
      //   ListTile(
      //     leading: Icon(Icons.sunny),
      //     title: Text("Sun"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.brightness_3),
      //     title: Text("Moon"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.star),
      //     title: Text("Star"),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   )
      // ],

      // GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       decoration: const BoxDecoration(
      //         color: Colors.red,
      //         image: DecorationImage(
      //           image: AssetImage("jua.jpg"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.black,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.yellow,
      //     ),
      //   ],
      // ),
    );
  }
}
