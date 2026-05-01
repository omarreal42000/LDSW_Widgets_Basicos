import 'package:flutter/material.dart';

void main() => runApp(const RealStreamApp());

class RealStreamApp extends StatelessWidget {
  const RealStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RealStream Cinema',
      home: Scaffold(
        // Usamos un Stack para poder poner una imagen de fondo
        body: Stack(
          children: [
            // 1. IMAGEN DE FONDO
            // Usamos una imagen de red con temática de cine
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?q=80&w=2070'),
                  fit: BoxFit.cover, // Cubre toda la pantalla
                ),
              ),
            ),
            // 2. CAPA OSCURA (Para legibilidad)
            Container(
              color: Colors.black.withOpacity(0.6),
            ),
            // 3. CONTENIDO PRINCIPAL
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // NOMBRE DE LA APLICACIÓN
                  const Text(
                    'REALSTREAM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                  const Text(
                    'CINEMA',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 50),
                  // MENSAJE DE BIENVENIDA
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Bienvenido a tu catálogo de películas',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}