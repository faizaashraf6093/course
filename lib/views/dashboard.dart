import 'package:course/components/user_profile.dart';
import 'package:flutter/material.dart';

import '../components/dashboard_container.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserProfile(userName: 'Omar'),
            const SizedBox(
              height: 25,
            ),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
              ),
              shrinkWrap: true,
              children: [
                Item(
                  text: 'Courses',
                  image: 'assets/images/course.png',
                  callback: () {},
                ),
                Item(
                  text: 'Register Shop',
                  image: 'assets/images/register.png',
                  callback: () {},
                ),
                Item(
                  text: 'Support Tickets',
                  image: 'assets/images/ticket.png',
                  callback: () {},
                ),
                Item(
                  text: 'Notifications',
                  image: 'assets/images/notification.png',
                  callback: () {},
                ),
                Item(
                  text: 'User Profile',
                  image: 'assets/images/profile.png',
                  callback: () {},
                ),
                Item(
                  text: 'Settings',
                  image: 'assets/images/setting.png',
                  callback: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
