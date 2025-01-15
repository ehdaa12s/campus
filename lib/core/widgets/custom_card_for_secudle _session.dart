import 'package:flutter/material.dart';

class CustomCardWidgetForSecudle extends StatelessWidget {
  final String detailsText;
  final String userName;
  final String userRole;
  final String userImageUrl;
  final String appointmentTime;
  final String appointmentDate;
  final VoidCallback onTap;
  final String cancelButtonLabel;
  final String detailsButtonLabel;
  final String statusMessage;
  final Color cancelButtonColor;
  final Color cancelButtonTextColor;
  final Color cancelButtonBorderColor;
  final Color detailsButtonColor;
  final Color detailsButtonTextColor;
  final VoidCallback onDetailsTap;

  // ignore: prefer_typing_uninitialized_variables
  final icon;

  const CustomCardWidgetForSecudle({
    super.key,
    required this.detailsText,
    required this.userName,
    required this.userRole,
    required this.userImageUrl,
    required this.appointmentTime,
    required this.appointmentDate,
    required this.onTap,
    required this.cancelButtonLabel,
    required this.detailsButtonLabel,
    required this.statusMessage,
    required this.icon,
    required this.onDetailsTap,
    this.cancelButtonColor = Colors.white,
    this.cancelButtonTextColor = const Color(0xFFFF6576),
    this.cancelButtonBorderColor = const Color(0xFFFF4155),
    this.detailsButtonColor = const Color(0xFF00008D),
    this.detailsButtonTextColor = const Color(0xFFF3FCFF),
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 451,
        height: 273,
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
              const SizedBox(height: 16),
              SizedBox(
                width: 319,
                height: 112,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTextButton(
                          label: detailsButtonLabel,
                          color: detailsButtonColor,
                          textColor: detailsButtonTextColor,
                          borderColor: detailsButtonColor,

                        ),
                        const SizedBox(width: 16),
                        _buildTextButton(

                          label: cancelButtonLabel,
                          color: cancelButtonColor,
                          textColor: cancelButtonTextColor,
                          borderColor: cancelButtonBorderColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(),
                            child: Icon(
                              icon,
                              color: const Color(0xFF667085),
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            statusMessage,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Color(0xFF667085),
                              fontSize: 14,
                              fontFamily: 'Baloo Bhaijaan 2',
                              fontWeight: FontWeight.w400,
                              height: 1.71,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget _buildTextButton({

    required String label,
    required Color color,
    required Color textColor,
    required Color borderColor,
  }) {
    return Container(
      width: 151,
      height: 45,
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Center(
        child:  GestureDetector(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontFamily: 'Baloo Bhaijaan 2',
              fontWeight: FontWeight.w400,
              height: 1.71,
            ),
          ),
          onTap: () {
            onDetailsTap();
          },
        ),
      ),
    );
  }
}
