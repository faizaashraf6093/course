import 'package:course/components/locked_container.dart';
import 'package:flutter/material.dart';
import '../components/course_container.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({
    super.key,
  });

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CourseContainer(headingText: 'Training Program #1'),
        CourseContainer(headingText: 'Training Program #2'),
        LockedContainer(headingText: 'Course #6'),
        LockedContainer(headingText: 'Course #7'),
      ],
    );
  }
}
