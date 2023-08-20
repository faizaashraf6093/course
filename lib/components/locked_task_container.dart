import 'package:flutter/material.dart';

class LockedTaskContainer extends StatelessWidget {
  const LockedTaskContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 172, 173, 172),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Icon(
              Icons.lock,
              size: 40,
              color: Color.fromARGB(255, 131, 130, 130),
            ),
          ),
          Text(
            'Locked',
            style:
                TextStyle(fontSize: 12, color: Color.fromARGB(255, 99, 97, 97)),
          ),
        ],
      ),
    );
  }
}

