import 'package:champs/core/widgets/custom_card%20_session_profile.dart';
import 'package:champs/core/widgets/custom_card_for_secudle%20_session.dart';
import 'package:champs/screens/account_screen.dart';
import 'package:champs/screens/book_your_session.dart';
import 'package:champs/screens/show_session_dedails.dart';
import 'package:flutter/material.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
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
                      width: 90,
                      child: Text(
                        'الجلسات ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF00001D),
                          fontSize: 24,
                          fontFamily: 'Baloo Bhaijaan 2',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
                const TabBar(
                  indicatorColor: Color(0xFF00008D),
                  labelColor: Color(0xFF00008D),
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF666677)),
                  tabs: [
                    Tab(
                      text: 'القادمة',
                    ),
                    Tab(
                      text: 'المعلقة ',
                    ),
                    Tab(
                      text: 'المكتملة',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // About Section
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomCardWidgetForSecudle(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },



                              icon: Icons.check_circle,
                              cancelButtonLabel: 'محادثة الموجه',
                              detailsButtonLabel: 'تغيير الموعد',
                              statusMessage: 'هذا الحجز مؤكد و مجدول. يمكنك إلغاءه فقط قبل \n12 ساعة من موعد بدايته', onDetailsTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BookYourSession(),
                                  ),
                                );


                            },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),

                      SingleChildScrollView(
                        child: Column(
                          children: [

                            CustomCardWidgetForSecudle(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },
                              onDetailsTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ShowSessionDedails(),
                                  ),
                                );
                              },

                              cancelButtonLabel: 'إلغاء الطلب',
                              detailsButtonLabel: 'تفاصيل الحجز',
                              statusMessage: 'لم يتم قبول او رفض طلبك من قبل الموجه حتى الآن', icon: Icons.info,

                            ),

                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),

                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CustomCardWidget(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            CustomCardWidget(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            CustomCardWidget(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            CustomCardWidget(
                              detailsText: 'عرض تفاصيل الطلب',
                              userName: 'فاطمة علي',
                              userRole: 'UX Designer',
                              userImageUrl: 'assets/images/profile 2.png',
                              appointmentTime: '3:00 PM - 3:30 PM',
                              appointmentDate: 'الجمعة ,3 يناير',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
