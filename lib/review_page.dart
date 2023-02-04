import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List reviews = [
    {
      'name': 'Andrews Jettpace',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'profileImage': 'assets/images/dr_nancy.png',
    },
    {
      'name': 'Stancy Stone',
      'review':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
      'profileImage': 'assets/images/dr_derrick.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ReviewCard(
                name: reviews[index]['name'],
                review: reviews[index]['review'],
                profileImage: reviews[index]['profileImage'],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: reviews.length));
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final String profileImage;
  const ReviewCard(
      {super.key,
      required this.name,
      required this.review,
      required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF3F5F9),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(profileImage),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(review),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 41,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: const Color(0xff1F4068),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xffF3F5F9),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Text(name,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff1B1B2F),
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
