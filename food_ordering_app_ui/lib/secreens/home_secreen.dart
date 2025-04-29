import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        //Navigating to the menu page.
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/menu');
          },
          child: Text('Go to Menu'),
        ),
      ),
    );
  }
}
