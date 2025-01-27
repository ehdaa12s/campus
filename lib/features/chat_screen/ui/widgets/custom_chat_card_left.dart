import 'package:champs/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class RotatedTextCardForAnotherSide extends StatelessWidget {
  final String content;
  final String time;
  final Color backgroundColor;
  final double rotationAngle;
  final String? userImageUrl;

  const RotatedTextCardForAnotherSide({
    super.key,
    required this.content,
    this.userImageUrl,
    required this.time,
    this.backgroundColor = const Color(0xFFF0F0F0),
    this.rotationAngle = 3.14,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(rotationAngle),
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: backgroundColor,
                ),
              ),
              child:  Transform(
                transform: Matrix4.identity()..rotateZ(-rotationAngle),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Content (Text)
                    Flexible(
                      child: Text(
                        content,
                        textAlign: TextAlign.left,
                        style: AppTextStyles.fornt12BlackBalooBhaijaan2w700,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                      ),
                      ),

                    const SizedBox(width: 8),

                    Text(
                      time,
                      textAlign: TextAlign.left,
                      style: AppTextStyles. fornt14BlackBalooBhaijaan2w500
                    ),
                  ],
                ),
              ),

            ),
          ),
          const Expanded(child:  SizedBox(width: 12)),

          // User Image
          if (userImageUrl != null)
            Expanded(child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(userImageUrl!),
            ),
            ),
          if (userImageUrl == null)
            const Expanded(child:  Padding(padding: EdgeInsets.symmetric(horizontal: 24))),



        ],
      ),
    );
  }
}
