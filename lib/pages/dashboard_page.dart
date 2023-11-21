import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard Page'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dashboard_outlined, size: 200),
            Center(
              child: Text('You are in the Dashboard Page. Great! '),
            ),
          ],
        ));
  }
}
