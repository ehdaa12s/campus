import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';

import 'package:champs/screens/mente_profile_screen.dart';
import 'package:flutter/material.dart';

class ShowSessionDedails extends StatefulWidget {
  const ShowSessionDedails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ShowSessionDedailsState createState() => _ShowSessionDedailsState();
}

class _ShowSessionDedailsState extends State<ShowSessionDedails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const SizedBox(width: 60),
                  const SizedBox(
                    width: 113,
                    child: Text(
                      'تفاصيل الحجز',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00001D),
                        fontSize: 20,
                        fontFamily: 'Baloo Bhaijaan 2',
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Profile Container
              Container(
                width: 358,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDFDFE),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xFFCCCCD1), width: 1),
                  boxShadow: const [
                    BoxShadow(color: Color(0x0F000000), blurRadius: 8)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundImage:
                                  AssetImage('assets/images/profile.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'معتصم شعبان',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF00001D),
                                    fontSize: 16,
                                    fontFamily: 'Baloo Bhaijaan 2',
                                    fontWeight: FontWeight.w700,
                                    height: 1.50,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Product Designer',
                                  style: TextStyle(
                                    color: Color(0xFF7F7F8E),
                                    fontSize: 14,
                                    fontFamily: 'Baloo Bhaijaan 2',
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MenteProfileScreen()));
                          },
                          child: const Text(
                            'عرض الملف الشخصي ',
                            style: TextStyle(
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
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                width: 358,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDFDFE),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xFFCCCCD1), width: 1),
                  boxShadow: const [
                    BoxShadow(color: Color(0x0F000000), blurRadius: 8)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var item in [
                      {
                        'title': 'اسم الجلسة',
                        'content': 'جلسة إرشادية',
                        'icon': null
                      },
                      {
                        'title': 'الموعد',
                        'content': 'الجمعة , 2 يناير 2025',
                        'icon': Icons.calendar_today
                      },
                      {
                        'title': 'الساعة',
                        'content': '3:00PM - 3:30PM',
                        'icon': Icons.access_time
                      },
                      {
                        'title': 'الموقع',
                        'content': 'اون لاين عبر جوجل : ((',
                        'icon': null
                      },
                      {
                        'title': 'ملاحظاتي',
                        'content':
                            'محتوى قابل للتغييرمحتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير محتوى قابل للتغيير ',
                        'icon': null
                      },
                    ])
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(bottom: 8),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color(0xFFD1D5DB), width: 0.75),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'] as String,
                              style: const TextStyle(
                                color: Color(0xFF666677),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (item['icon'] != null)
                                  Icon(
                                    item['icon'] as IconData,
                                    color: const Color(0xFF00001D),
                                    size: 24,
                                  ),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    item['content'] as String,
                                    style: const TextStyle(
                                      color: Color(0xFF00001D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.right,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              CustomButton(
                buttonText: 'تاكيد الحجز',
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
