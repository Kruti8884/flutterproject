import 'package:flutter/material.dart';
import 'ab.dart';



class ColumnExperiment extends StatelessWidget {
  const ColumnExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),

            SizedBox(height: 20),

            Text(
              'This is a Column Experiment',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 11, 38, 127),
              ),
            ),
            SizedBox(height: 20),
            ab(),
            SizedBox(height: 20),
            ab(),
            SizedBox(height: 20),
            ab(),
            SizedBox(height: 20),
            ab(),
            SizedBox(height: 20),
            ab(),
            SizedBox(height: 20),        
          ],
        ),
      ),
    );
  }
}