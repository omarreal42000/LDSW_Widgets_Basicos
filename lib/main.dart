import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('LDSW - Widgets Básicos')),
        body: Container( // 1. CONTAINER (Configurado con color y alineación)
          color: Colors.blueGrey[50],
          child: Column( // 2. COLUMN (Organiza los elementos verticalmente)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text( // 3. TEXT (Configurado con estilo de fuente)
                'Mi Aplicación Flutter',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Row( // 4. ROW (Organiza elementos horizontalmente)
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.code, color: Colors.blue),
                  Text(' Desarrollo Web UDG ', style: TextStyle(fontSize: 18)),
                  Icon(Icons.mobile_friendly, color: Colors.green),
                ],
              ),
              const SizedBox(height: 30),
              Stack( // 5. STACK (Superpone widgets)
                alignment: Alignment.center,
                children: [
                  Container(width: 200, height: 60, color: Colors.blue[200]),
                  const Text('Texto sobre el Stack', style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}