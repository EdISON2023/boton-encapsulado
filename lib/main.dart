import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botón tipo cápsula'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/user.png'),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print('Botón presionado');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  primary: Colors.blue,
                ),
                child: InkWell(
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    print('Enlace de inicio de sesión presionado');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
