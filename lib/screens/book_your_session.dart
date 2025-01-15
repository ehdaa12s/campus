import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:flutter/material.dart';

class BookYourSession extends StatefulWidget {
  const BookYourSession({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _BookYourSessionState createState() => _BookYourSessionState();
}

class _BookYourSessionState extends State<BookYourSession> {
  DateTime? _selectedDate;
  String selectedDate = '25 سبتمبر 2024';

  final List<String> availableTimes = [
    '9:00 - 9:30',
    '10:00 - 10:30',
    '11:00 - 11:30',
    '12:00 - 12:30',
    '1:00 - 1:30',
    '2:00 - 2:30',
    '3:00 - 3:30',
    '4:00 - 4:30'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const SizedBox(
                    width: 60,
                  ),
                  const SizedBox(
                    width: 135,
                    child: Text(
                      'احجز جلستك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00001D),
                        fontSize: 24,
                        fontFamily: 'Baloo Bhaijaan 2',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                width: 138,
                child: Text(
                  'الجلسات المتاحة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF101828),
                    fontSize: 20,
                    fontFamily: 'Baloo Bhaijaan 2',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 398,
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFDFDFE),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
                    borderRadius: BorderRadius.circular(4),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      selectedDate,
                      style: const TextStyle(
                        color: Color(0xFF00001D),
                        fontSize: 16,
                        fontFamily: 'Baloo Bhaijaan 2',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              const Text(
                'الفترات الزمنية المتاحة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 20,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w700,
                  height: 1.80,
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: availableTimes.map((time) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedDate = time;
                          });
                        },
                        child: Container(
                          width: 129,
                          height: 44,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFDFDFE),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
                              borderRadius: BorderRadius.circular(4),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                time, // Display the time
                                style: const TextStyle(
                                  color: Color(0xFF00001D),
                                  fontSize: 16,
                                  fontFamily: 'Baloo Bhaijaan 2',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(
                height: 24,
              ),
              Container(
                width: 345,
                height: 137,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF98A1B2), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xFFF5F5F5),
                      child: Icon(Icons.upload, size: 24),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'اضغط لرفع السيرة الذاتية',
                      style: TextStyle(
                        color: Color(0xFF00008D),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '(الحد الاقصى لحجم الملف: 25 MB)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF667085),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'أَضف سؤالك لهذه الجلسة ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF101828),
                  fontSize: 20,
                  fontFamily: 'Baloo Bhaijaan 2',
                  fontWeight: FontWeight.w700,
                  height: 1.20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 345,
                height: 132,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF98A1B2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.50,
                      child: SizedBox(
                        width: 75,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'نبذة عنك',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF98A1B2),
                                fontSize: 12,
                                fontFamily: 'Baloo Bhaijaan 2',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                buttonText: 'احجز الان ',
                onPressed: () {},
                width: 345,
                height: 54,
              )
            ],
          ),
        ),
      ),
    );
  }
}
