import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        children: [
          // Masked profile picture
          Positioned(
            top: 0,
            right: 0,
            child: ClipOval(
              child: Image.asset(
                'assets/maskProfile.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Actual profile picture
          Positioned(
            top: 10,
            right: 10,
            child: ClipOval(
              child: Image.asset(
                'assets/profile.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Custom decoration
          Positioned(
            bottom: 11,
            right: 11,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle),
              height: 9,
              width: 9,
            ),
          ),
        ],
      ),
    );
  }
}
