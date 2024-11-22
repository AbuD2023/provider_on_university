import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_on_university/controller/provider/counter_provider.dart';

class Counter1 extends StatelessWidget {
  const Counter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${Provider.of<CounterProvider>(context).counter}'),
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text('${counterProvider.counter}');
              },
            )
          ],
        ),
      ),
    );
  }
}
