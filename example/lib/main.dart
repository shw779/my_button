import 'package:flutter/material.dart';
import 'package:my_button/my_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              MyButton(
                text: "button1",
                fontSize: 30,
              ),
              MyButton(
                text: "button2",
                fontSize: 30,
                backgroundColor: Colors.red,
                borderWidth: 0,
                borderColor: Colors.red,
              ),
              MyButton(
                text: "button3",
                fontSize: 30,
                outlinedBorder: LinearBorder(),
                backgroundColor: Colors.blue,
              ),
              MyButton(
                text: "",
                fontSize: 30,
                outlinedBorder: StarBorder(),
                backgroundColor: Colors.blue,
              ),
              MyButton(
                fontStyle: FontStyle.italic,
                text: "button5",
                fontSize: 30,
                outlinedBorder: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                backgroundColor: Colors.yellow,
                borderWidth: 0,
                borderColor: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
