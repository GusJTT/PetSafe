import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Pet Safe',
                    style: TextStyle(
                      fontSize: 32, fontFamily:'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Usuario',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Contraseña',
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      print('Botón presionado');
                    },
                    child: Text('¿Olvidaste tu contraseña?'),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF134B70),
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      print('Botón presionado');
                    },
                    child: Text('Iniciar Sesión'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF508C9B),
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Botón presionado');
                  },
                  child: Text('Crear cuenta'),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    print('Botón presionado');
                  },
                  child: Text('Ingresar como invitado'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
