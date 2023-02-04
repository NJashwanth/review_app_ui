import 'package:flutter/material.dart';
import 'package:review_app/review_page.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String designation;
  final String profileImage;
  const ProfileCard(
      {super.key,
      required this.name,
      required this.designation,
      required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ReviewPage()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffF3F5F9),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              ProfileSection(
                designation: designation,
                name: name,
                profileImage: profileImage,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff1B1B2F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.access_time_outlined,
                              size: 18,
                              color: Color(0xffAECD63),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '9:00 am - 6:30 pm',
                              style: TextStyle(
                                  color: Color(0xffAECD63),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE43F5A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ReviewPage()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('BOOK'),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String name;
  final String designation;
  final String profileImage;
  const ProfileSection(
      {super.key,
      required this.name,
      required this.designation,
      required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xffAECD63).withOpacity(1),
                    const Color(0xffAECD63).withOpacity(0),
                  ],
                ),
              ),
              child: Row(
                //container for the profile picture
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        width: 82,
                        height: 82,
                        child: Image.asset(
                          profileImage,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Expanded(
                    child: ProfileDetails(
                      title: name,
                      designation: designation,
                      profileImage: profileImage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  final String title;
  final String designation;
  final String profileImage;
  const ProfileDetails(
      {super.key,
      required this.title,
      required this.designation,
      required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            designation,
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xff1B1B2F).withOpacity(0.5),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
