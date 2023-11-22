import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resolucion_parcial/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController emailCtrl = TextEditingController();
    final TextEditingController passlCtrl = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailCtrl,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    helperText: "Ingresa tu correo",
                    label: const Text('Email')),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passlCtrl,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    helperText: "Ingresa tu password",
                    label: const Text('Password')),
              ),
              const Center(
                child: Text('This is a Login Page'),
              ),
              FilledButton(
                  onPressed: () {
                    print(emailCtrl.text);
                    print(passlCtrl.text);
                    // context.push(AppRouters.dashboard);
                  },
                  child: const Text('Dashboard'))
            ],
          ),
        ));
  }
}
