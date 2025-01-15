import 'package:flutter/material.dart';

class CustomTransformWidget extends StatelessWidget {
  final String labelText;
  final List<Color> progressColors;
  final Widget targetScreen;
  final double rotationAngle;

  const CustomTransformWidget({
    super.key,
    required this.labelText,
    required this.progressColors,
    required this.targetScreen,
    this.rotationAngle = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Transform(
        transform: Matrix4.identity()..rotateZ(rotationAngle),
        alignment: Alignment.center,
        child: Container(
          width: 285,
          height: 44,
          decoration: ShapeDecoration(
            color: const Color(0xFFFDFDFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const  Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF636262),
                size: 24,
              ),
              Text(
                labelText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 16),
              Row(
                children: progressColors.map((color) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 8,
                      width: 38,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const  Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF636262),
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
