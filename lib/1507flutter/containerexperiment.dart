import 'package:flutter/material.dart';
import 'ab.dart'; // ✅ Import the Ab widget

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column( // 🔄 Changed from Container to Column to allow multiple widgets
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        color: Colors.blue,
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          'Hello, Flutter!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const ab(), 
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
