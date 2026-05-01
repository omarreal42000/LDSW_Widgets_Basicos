import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('RealStream Cinema smoke test', (WidgetTester tester) async {
    // 1. Construye nuestra app y dispara un frame.
    // Cambiamos MyApp() por RealStreamApp() para que coincida con tu main.dart
    await tester.pumpWidget(const RealStreamApp());

    // 2. Verificamos que el nombre de tu aplicación aparezca en pantalla.
    expect(find.text('REALSTREAM'), findsOneWidget);
    expect(find.text('CINEMA'), findsOneWidget);

    // 3. Verificamos que el mensaje de bienvenida esté presente.
    expect(find.text('Bienvenido a tu catálogo de películas'), findsOneWidget);
  });
}