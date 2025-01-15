import 'package:champs/core/widgets/custom_drop_button_list.dart';
import 'package:champs/core/widgets/custom_navagation_bar.dart';
import 'package:champs/core/widgets/custom_profile_card.dart';
import 'package:champs/core/widgets/custom_search_button.dart';
import 'package:champs/constant.dart';
import 'package:champs/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        items: [
          NavItem(icon: Icons.home, label: 'الرئيسية'),
          NavItem(icon: Icons.message, label: 'الرسائل'),
          NavItem(icon: Icons.calendar_today, label: 'جلساتي'),
          NavItem(icon: Icons.account_circle, label: 'حسابي'),
          NavItem(icon: Icons.more_horiz, label: 'المزيد'),
        ],
        selectedIndex: 0,
        onTap: (index) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreenForNavagationBar(
                        initialIndex: index,
                      )));
        },
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                        width: 68,
                        child: Text(
                          'البحث',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF101828),
                            fontSize: 20,
                            fontFamily: fontName,
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                          ),
                        )),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSearchButton(
                  text:    'ابحث عن افضل الموجهين في الوطن العربي '
                ,width: 345, onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomDropdownButton(
                          height: 30,
                          width: 100,
                          text: 'البلد',
                          items: ['مصر', 'السعودية', 'الإمارات', 'الأردن'],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        CustomDropdownButton(
                          height: 30,
                          width: 100,
                          text: 'اللغة',
                          items: [
                            'العربية',
                            'الإنجليزية',
                            'الفرنسية',
                            'الألمانية'
                          ],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        CustomDropdownButton(
                          height: 30,
                          width: 100,

                          text: 'التخصص',
                          items: [
                            'التصميم',
                            'تحليل البيانات',
                            'تطوير المواقع',
                            'صناعة المحتوى',
                            'كتابة المحتوى'
                          ],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        CustomDropdownButton(
                          height: 30,
                          width: 100,
                          text: 'المستوي',
                          items: ['المبتدئ', 'المتوسط', 'المتقدم'],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ProfileCard(
                  width: 345,
                  name: 'معتصم شعبان',
                  role: 'Product Designer',
                  imageUrl: 'assets/images/profile.png',
                  experience: '8 سنوات',
                  rating: '4.9',
                  numOfRating: '24',
                  sessions: '45 جلسة',
                  iconColor: Colors.grey,
                  icon: Icon(Icons.star, color: Colors.amber, size: 16),
                ),
                const SizedBox(height: 8),
                const ProfileCard(
                  width: 345,
                  name: 'ايمان عبدالله',
                  role: 'Product Designer',
                  imageUrl: 'assets/images/profile 2.png',
                  experience: '8 سنوات',
                  rating: '4.9',
                  numOfRating: '24',
                  sessions: '45 جلسة',
                  iconColor: Colors.grey,
                  icon: Icon(Icons.star, color: Colors.amber, size: 16),
                ),
                const SizedBox(height: 8),
                const ProfileCard(
                  width: 345,
                  name: 'كريم سيد',
                  role: 'Product Designer',
                  imageUrl: 'assets/images/profile 3.png',
                  experience: '8 سنوات',
                  rating: '4.9',
                  numOfRating: '24',
                  sessions: '45 جلسة',
                  iconColor: Colors.grey,
                  icon: Icon(Icons.star, color: Colors.amber, size: 16),
                ),
                const SizedBox(height: 8),
                const ProfileCard(
                  width: 345,
                  name: 'معتصم شعبان',
                  role: 'Product Designer',
                  imageUrl: 'assets/images/profile.png',
                  experience: '8 سنوات',
                  rating: '4.9',
                  numOfRating: '24',
                  sessions: '45 جلسة',
                  iconColor: Colors.grey,
                  icon: Icon(Icons.star, color: Colors.amber, size: 16),
                ),
                const SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
