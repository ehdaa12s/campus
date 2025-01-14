import 'package:champs/constant.dart';
import 'package:flutter/material.dart';

class CustomCardForNotifaction extends StatelessWidget {
  const CustomCardForNotifaction({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.reminder,
  });

  final String title;
  final String subTitle;
  final String imageUrl;
  final String reminder;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 112,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imageUrl),
            ),
            title: Text(
              title,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF101828),
                fontSize: 12,
                fontFamily: 'Baloo Bhaijaan 2',
                fontWeight: FontWeight.w700,
                height: 1.75,
              ),
            ),
            subtitle: Text(
              subTitle,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFF667085),
                fontSize: 12,
                fontFamily: fontName,
                fontWeight: FontWeight.w500,
                height: 1.75,
              ),
            ),
            trailing: const SizedBox(width: 8),
          ),
Padding(padding: const EdgeInsets.only(right: 40),
          child:
          Text(
            reminder,
            textAlign: TextAlign.center,

            style: const TextStyle(
              color: Color(0xFF475467),
              fontSize: 12,
              fontFamily: fontName,
              fontWeight: FontWeight.w400,
              height: 1.75,
            ),
          ),
),


        ],
      ),
    );
  }
}
