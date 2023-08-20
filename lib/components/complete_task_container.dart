import 'package:flutter/material.dart';

class CompleteTaskContainer extends StatelessWidget {
  const CompleteTaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 84, 179, 87),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          Icon(
            Icons.check,
            size: 55,
            color: Colors.white,
          ),
          Text(
            'complete',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
