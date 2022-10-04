import 'package:flutter/material.dart';
import 'body_app.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: SizedBox(
          width: double.infinity,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    "Resetar",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: BodyApp(),
    );
  }
}
