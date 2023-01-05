import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_pa_news/src/commons/providers/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Login Page',
                  style: TextStyle(fontSize: 64, color: Colors.white),
                ),
                const SizedBox(
                  height: 200,
                ),
                const TextField(),
                const TextField(),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<AuthProvider>(context, listen: false).login();
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
