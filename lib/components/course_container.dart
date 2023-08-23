import 'package:flutter/material.dart';

class CourseContainer extends StatefulWidget {
  final String headingText;

  const CourseContainer({
    super.key,
    required this.headingText,
  });

  @override
  State<CourseContainer> createState() => _CourseContainerState();
}

class _CourseContainerState extends State<CourseContainer> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
        // Removed the bottom left and right border
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
      height: height * .16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            widget.headingText,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            color: Colors.green,
            height: 27,
            width: width * .8,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Added padding to the text and icon
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    '100% Complete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
