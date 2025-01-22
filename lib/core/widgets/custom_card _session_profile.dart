import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String detailsText;
  final String userName;
  final String userRole;
  final String userImageUrl;
  final String appointmentTime;
  final String appointmentDate;
  final VoidCallback onTap;

  const CustomCardWidget({
    super.key,
    required this.detailsText,
    required this.userName,
    required this.userRole,
    required this.userImageUrl,
    required this.appointmentTime,
    required this.appointmentDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // Ensures RTL alignment for Arabic
      child: Container(
        width: 361,
        height: 145,
        padding: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFFDFDFE),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(userImageUrl),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            color: Color(0xFF00001D),
                            fontSize: 16,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          userRole,
                          style: const TextStyle(
                            color: Color(0xFF7F7F8E),
                            fontSize: 14,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    onTap();
                  },
                  child: Text(
                    detailsText,
                    style: const TextStyle(
                      color: Color(0xFF00008D),
                      fontSize: 14,
                      fontFamily: 'Baloo Bhaijaan 2',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'الموعد',
                      style: TextStyle(
                        color: Color(0xFF666677),
                        fontSize: 14,
                        fontFamily: 'Baloo Bhaijaan 2',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          appointmentDate,
                          style: const TextStyle(
                            color: Color(0xFF00001D),
                            fontSize: 14,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'الساعة',
                      style: TextStyle(
                        color: Color(0xFF666677),
                        fontSize: 14,
                        fontFamily: 'Baloo Bhaijaan 2',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          appointmentTime,
                          style: const TextStyle(
                            color: Color(0xFF00001D),
                            fontSize: 14,
                            fontFamily: 'Baloo Bhaijaan 2',
                            fontWeight: FontWeight.w400,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
