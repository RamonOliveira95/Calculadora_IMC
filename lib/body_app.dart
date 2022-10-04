import 'package:flutter/material.dart';

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: SizedBox(
          width: 280,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Calculadora IMC",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: const [
                  Text(
                    "Peso (Kg)",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
              const TextField(
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: TextStyle(                  
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),                    
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Altura (cm)",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const TextField(
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Container(
                    width: 30,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Calcular",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
