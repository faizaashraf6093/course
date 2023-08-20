import 'package:flutter/material.dart';

class TaskContainer extends StatefulWidget {
  final String headingText;
  final String subText;
  final Widget? child;
  const TaskContainer({
    super.key,
    required this.headingText,
    required this.subText,
    this.child,
  });

  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                widget.headingText,
                                style: const TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(255, 78, 201, 40),
                                    fontWeight: FontWeight.w900),
                              ),
                            )),
                        const SizedBox(
                          height: 4,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                widget.subText,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 34, 126, 6),
                                    fontWeight: FontWeight.w900),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: widget.child!,
                )
              ],
            )),
      ),
    );
  }
}
