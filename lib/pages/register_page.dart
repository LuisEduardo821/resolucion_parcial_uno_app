
import 'package:resolucion_parcial/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('This is a Register Page.'),
          ),
          FilledButton(
              onPressed: () {
                context.push(AppRouters.dashboard);
              },
              child: const Text('Dashboard'))
        ],
      ),
    );
  }
}
