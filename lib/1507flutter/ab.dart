import 'package:flutter/material.dart';

class ab extends StatelessWidget {
  const ab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.blue, // Background color
            ),
            onPressed: () {
              print('Elevated Button Pressed');
            },
            child: Text('B1'),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.blue, // Background color
            ),
            onPressed: () {
              print('Elevated Button Pressed');
            },
            child: Text('B2'),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.blue, // Background color
            ),
            onPressed: () {
              print('Elevated Button Pressed');
            },
            child: Text('B3'),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.blue, // Background color
            ),
            onPressed: () {
              print('Elevated Button Pressed');
            },
            child: Text('B4'),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
