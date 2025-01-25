import 'package:flutter/material.dart';

class SimplifiedContainerRow extends StatelessWidget {
  const SimplifiedContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 74,
      child:Expanded(child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Expanded(child:  _buildBox(),),
          const SizedBox(width: 14),
          _buildBox(),
          const SizedBox(width: 14),
          _buildBox(),
          const SizedBox(width: 14),
          _buildBox(
            child: const Text(
              '8',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'Lalezar',
                fontWeight: FontWeight.w400,
                height: 0.75,
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 25),
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildBox({Widget? child, EdgeInsetsGeometry? padding}) {
    return Container(
      width: 74,
      height: 74,
      padding: padding,
      decoration: const BoxDecoration(
          border: BorderDirectional(
        bottom: BorderSide(
          color: Color(0xFF98A1B2),
          width: 2,
        ),
      )),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
