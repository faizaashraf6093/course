
import 'package:flutter/material.dart';

class NotificationContainer extends StatefulWidget {
  final String headingText;
  const NotificationContainer({
    super.key,
    required this.headingText,
  });

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      height: height * .3,
      width: width * .9,
      padding: const EdgeInsets.only(top: 10, left: 8, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.headingText,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 1,
            width: 300,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'New Update Available (update 2.23)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'New Update Available (update 2.22)',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Your course evaluation is ready',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'New Update Available (update 2.21)',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
