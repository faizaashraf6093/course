import 'package:flutter/material.dart';

class LockedContainer extends StatefulWidget {
  final String headingText;

  const LockedContainer({
    super.key,
    required this.headingText,
  });

  @override
  State<LockedContainer> createState() => _LockedContainerState();
}

class _LockedContainerState extends State<LockedContainer> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
        color: Colors.white,
      ),
      width: width * .8,
      height: height * .15,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Not unlocked',
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.headingText,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.lock,
              size: 60,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
