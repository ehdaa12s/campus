import 'package:flutter/material.dart';

class SimplifiedColumnContainer extends StatelessWidget {
  const SimplifiedColumnContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 345,
            height: 50,
            child: Stack(
              children: [
                const Positioned(
                  left: 165,
                  child: Text(
                    'أو ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF636262),
                      fontSize: 20,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w700,
                      height: 1.05,
                      letterSpacing: -0.32,
                    ),
                  ),
                ),
                _buildLine(left: 0, rotateAngle: 0, width: 160),
                _buildLine(left: 180, rotateAngle: 0, width: 160),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIconBox(
                icon: Image.asset('assets/images/linkedin.png'),
              ),
              const SizedBox(width: 6),
              _buildIconBox(
                icon: Image.asset('assets/images/google.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLine(
      {required double left,
      required double rotateAngle,
      required double width}) {
    return Positioned(
      left: left,
      top: 9,
      child: Transform(
        transform: Matrix4.identity()..rotateZ(rotateAngle),
        child: Container(
          width: width,
          height: 1,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildIconBox({required Widget icon}) {
    return Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
          ],
        ));
  }
}
