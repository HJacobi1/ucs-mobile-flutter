import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter1 = 2;
  int counter2 = 5;
  void incrementaContador1() {
    setState(() {
      counter1++;
    });
  }

  void incrementaContador2() {
    setState(() {
      counter2++;
    });
  }

  void incrementaContadores() {
    setState(() {
      counter1++;
      counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Text("Contador 1:\n $counter1"),
              ElevatedButton(
                onPressed: incrementaContador1,
                child: Text('Incrementa Contador 1'),
              ),
              Text("Contador 2:\n $counter2"),
              ElevatedButton(
                onPressed: incrementaContador2,
                child: Text('Incrementa Contador 2'),
              ),
              ElevatedButton(
                onPressed: incrementaContadores,
                child: Text('Incrementa Todos os Contadores'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementaContador1,
        ),
      ),
    );
  }
}

//StateFull = pode mudar
//StateLess - nao muda
//useState React
