import 'package:course/components/notification_container.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
              color: Colors.green.shade800, fontWeight: FontWeight.w900),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.grey,
        ),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  SearchBar(),
                  SizedBox(height: 35),
                  NotificationContainer(headingText: 'General'),
                  SizedBox(height: 35),
                  NotificationContainer(headingText: 'Shop Updates'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
