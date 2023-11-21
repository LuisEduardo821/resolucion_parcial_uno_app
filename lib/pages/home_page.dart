
import 'package:resolucion_parcial/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('News App')),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: () {
                    context.push('/info');
                  },
                  icon: const Icon(Icons.info),
                )),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('Welcome to News App')),
            FilledButton(
                onPressed: () {
                  context.push(AppRouters.login);
                },
                child: const Text('Login')),
            FilledButton(
                onPressed: () {
                  context.push(AppRouters.register);
                },
                child: const Text('Register')),
            FilledButton(
                onPressed: () {
                  context.push(AppRouters.info);
                },
                child: const Text('Info')),
            FilledButton(
                onPressed: () {
                  context.push(AppRouters.about);
                },
                child: const Text('About'))
          ],
        ));
  }
}
