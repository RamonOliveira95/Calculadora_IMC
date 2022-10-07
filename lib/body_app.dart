import 'package:flutter/material.dart';

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  TextEditingController controllerPeso = TextEditingController();
  TextEditingController controllerAltura = TextEditingController();
  num resultadoImc = 0;
  void limparPeso() {
    controllerPeso.clear();
  }

  void limparAltura() {
    controllerAltura.clear();
  }

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
                    "Altura (cm)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: controllerAltura,
                cursorColor: Colors.white,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: const InputDecoration(
                  hintText: "Digite a sua altura",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
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
                    "Peso (Kg)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: controllerPeso,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: const InputDecoration(
                  hintText: "Digite o seu peso",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
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
              const SizedBox(height: 40),
              if (resultadoImc == 0)
                Column(
                  children: const [
                    Text(
                      "Coloque seus dados e clique em Calcular",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              if (resultadoImc > 0 && resultadoImc < 18.5)
                Column(
                  children: [
                    Text(
                      "(IMC ${resultadoImc.toStringAsFixed(2)})",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Você está abaixo do peso",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              if (resultadoImc >= 18.5 && resultadoImc < 25)
                Column(
                  children: [
                    Text(
                      "(IMC ${resultadoImc.toStringAsFixed(2)})",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Você está com o peso normal",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              if (resultadoImc >= 25)
                Column(
                  children: [
                    Text(
                      "(IMC ${resultadoImc.toStringAsFixed(2)})",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Você está com sobrepeso",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      num numAux = (num.parse(controllerPeso.text) /
                          (num.parse(controllerAltura.text) *
                              num.parse(controllerAltura.text)));
                      numAux = numAux * 10000;
                      resultadoImc = numAux;
                    },
                  );
                },
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
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  setState(
                    () {
                      limparPeso();
                      limparAltura();
                      resultadoImc = 0;
                    },
                  );
                },
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Container(
                    width: 30,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Limpar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
