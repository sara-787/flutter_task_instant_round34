import 'package:flutter/material.dart';
import 'package:r34_24/widgets/button.dart';

class IntroPageBodyArea extends StatelessWidget {
  const IntroPageBodyArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 120), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Image(
              image: AssetImage('assets/images/logo.png'),
              height: 40,
            ),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          
          const SizedBox(height: 5),
          const Text(
            'to our store',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Get your groceries in as fast as one hour',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 40),

          // Button
          Button(title: 'Login', color: const Color(0xFF3BCC86), path: '/Login')
          
        ],
      ),
    );
  }
}
