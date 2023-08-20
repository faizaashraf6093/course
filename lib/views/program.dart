import 'package:course/components/program_container.dart';
import 'package:flutter/material.dart';

class ProgramScreen extends StatefulWidget {
  const ProgramScreen({super.key});

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tracking Program #2',
            style: TextStyle(
                color: Colors.green.shade800, fontWeight: FontWeight.w900),
          ),
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
        ),
        body: Column(
          children: [
            const ProgramContainer(),
          ],
        ));
  }
}
