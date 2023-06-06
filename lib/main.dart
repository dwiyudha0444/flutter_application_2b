import 'package:flutter/material.dart';
import 'package:flutter_application_2b/beranda.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter Praktik (2b))',
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Keduaku',
            style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_pin,
              size: 150,
              color: Colors.red,
            ),
            const Text(
              'Selamat Datang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 10),
            const Text(
              'Silahkan masukan :',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text('Username'),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 50),
            ButtonTheme(
                child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beranda()));
              },
              icon: const Icon(Icons.login),
              label: const Text('Masuk'),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.green),
            ))
          ],
        )),
      ),
    );
  }
}
