import 'package:flutter/material.dart';
import 'package:project_5roots/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/ROOOTS (1).png',
                    height: 240,
                  ),
                ),
                const SizedBox(height: 25),

                // title
                const Text(
                  '5Roots',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
                ),
                const SizedBox(height: 24),

                // sub title
                const Text(
                  'LOOK GOOD, FEEL GOOD',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 252, 252),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                // start now
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 47, 83),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    padding: EdgeInsets.all(25),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
