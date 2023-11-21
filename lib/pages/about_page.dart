import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('This is About Page')),
          Center(child: Text('Made by Luis Eduardo Rivadeneira')),
          Center(child: Text('First Partial PUCESI')),
        ],
      )
    );
  }
}
