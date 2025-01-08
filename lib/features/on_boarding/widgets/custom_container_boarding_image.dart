import 'package:flutter/material.dart';
class CustomContainerBoardingImage extends StatelessWidget {
   const CustomContainerBoardingImage(
      {super.key, required this.image});
 final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 344,
      height: 184,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
