import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  final String userName;
  const UserProfile({
    super.key,
    required this.userName,
  });

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 30),
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD6D6D6),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(160, 197, 75, 0.9),
              boxShadow: [BoxShadow(spreadRadius: 4, color: Color(0xff1B5E20))],
            ),
            child: Image.asset(
              'assets/images/user.png',
              height: 35,
              width: 30,
              color: const Color(0xff1B5E20),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello',
                style: TextStyle(
                  color: Color(0xff1B5E20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                widget.userName,
                style: const TextStyle(
                  color: Color(0xff1B5E20),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
