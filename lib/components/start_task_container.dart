import 'package:flutter/material.dart';

class StartTaskContainer extends StatelessWidget {
  const StartTaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 204, 47),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          'START',
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


