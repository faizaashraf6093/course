import 'package:flutter/material.dart';

import 'complete_task_container.dart';
import 'locked_task_container.dart';
import 'start_task_container.dart';
import 'task_container.dart';

class ProgramContainer extends StatefulWidget {
  const ProgramContainer({super.key});

  @override
  State<ProgramContainer> createState() => _ProgramContainerState();
}

class _ProgramContainerState extends State<ProgramContainer> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskContainer(
          headingText: 'Component # 1',
          subText: 'True or False',
          child: CompleteTaskContainer(),
        ),
        TaskContainer(
          headingText: 'Component # 2',
          subText: 'Zoom Session',
          child: CompleteTaskContainer(),
        ),
        TaskContainer(
          headingText: 'Component # 3',
          subText: 'In Field Training',
          child: CompleteTaskContainer(),
        ),
        TaskContainer(
          headingText: 'Component # 4',
          subText: 'Video',
          child: StartTaskContainer(),
        ),
        TaskContainer(
          headingText: 'Component # 5',
          subText: 'Oral Examination',
          child: LockedTaskContainer(),
        ),
      ],
    );
  }
}