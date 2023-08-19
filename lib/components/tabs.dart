import 'package:course/views/courses.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new),
          title: const Text('Courses'),
          bottom: const TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                text: 'Public',
              ),
              Tab(
                text: 'Intermediate',
              ),
              Tab(
                text: 'Advanced',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            CourseScreen(),
            Center(
              child: Text("Intermediate"),
            ),
            Center(
              child: Text("Advanced"),
            ),
          ],
        ),
      ),
    );
  }
}
