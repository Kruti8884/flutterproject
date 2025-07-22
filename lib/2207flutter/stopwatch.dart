import 'package:flutter/material.dart';

class StopwatchExperiment extends StatefulWidget {
  const StopwatchExperiment({super.key});

  @override
  State<StopwatchExperiment> createState() => _StopwatchExperimentState();
}

class _StopwatchExperimentState extends State<StopwatchExperiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stopwatch Experiment"),
      ),
      body: Center(
        child: Text(
          "0 seconds",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}