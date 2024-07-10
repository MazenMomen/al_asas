import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.height * 50 / 390,
      backgroundColor: const Color(0xFF2A3E34),
      child: Icon(
        Icons.person,
        size: MediaQuery.of(context).size.height * 50 / 390,
        color: const Color(0xFFFFFFFF),
      ),
    );
  }
}
