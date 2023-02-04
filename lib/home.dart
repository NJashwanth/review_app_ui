import 'package:flutter/material.dart';
import 'package:review_app/profile_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List users = [
    {
      'name': 'Dr. Nancy Stevens',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_nancy.png',
    },
    {
      'name': 'Dr. Derrick Malone',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_derrick.png',
    },
    {
      'name': 'Dr. Meghan Stella',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_meghan.png',
    },
    {
      'name': 'Dr. Nancy Stevens',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_nancy.png',
    },
    {
      'name': 'Dr. Derrick Malone',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_derrick.png',
    },
    {
      'name': 'Dr. Meghan Stella',
      'designation': 'BDS, MDS',
      'profileImage': 'assets/images/dr_meghan.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ProfileCard(
            name: users[index]['name'],
            designation: users[index]['designation'],
            profileImage: users[index]['profileImage'],
          );
        },
      ),
    );
  }
}
