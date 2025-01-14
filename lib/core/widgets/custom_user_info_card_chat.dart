import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final String userName;
  final String status;
  final String userImageUrl;

  const UserInfoCard({
    super.key,
    required this.userName,
    required this.status,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 160,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F0),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 108,
            top: 93,
            child: SizedBox(
              width: 203,
              height: 19,
              child: Text(
                userName,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 20,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w700,
                  height: 0.8,
                ),
              ),
            ),
          ),
          Positioned(
            left: 108,
            top: 117,
            child: SizedBox(
              width: 203,
              height: 19,
              child: Text(
                status,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Color(0xFF98A1B2),
                  fontSize: 15,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            left: 322,
            top: 86,
            child: Container(
              width: 46,
              height: 48,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(userImageUrl),
                  fit: BoxFit.fill,
                ),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 48,
            top: 93,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(1.57),
              child: const SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 64,
            top: 93,
            child: SizedBox(
              width: 24,
              height: 24,
              child: Icon(
                Icons.phone_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
