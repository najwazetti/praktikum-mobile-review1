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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(9.0),
          // color: Colors.black,
          decoration: BoxDecoration(
              border: Border.all(
            width: 3,
            color: Colors.orange,
          )),
          child: const Text(
            'NAJWA FELIRRRRRRRRRRRAAAAAAAAAA ZETTTTTTTTTTTTTIIIIIIIIIII',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.deepPurple),
          ),
        )

        // body: Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blueAccent,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.deepOrange,
        //       )
        //     ],
        //   ),
        // )
        );
  }
}
