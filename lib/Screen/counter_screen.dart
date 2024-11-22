import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_on_university/Screen/dashbord.dart';
import 'package:provider_on_university/controller/provider/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My provider'),
      ),
      body: Dashbord(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false)
              .incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
