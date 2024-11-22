import 'package:flutter/material.dart';
import 'package:provider_on_university/Screen/counter1.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        width: 400,
        height: 400,
        child: Column(
          children: [
            Text('Dashbord'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Counter1(),
                Counter1(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
