import 'package:champs/core/widgets/custom_profile_card.dart';
import 'package:champs/core/widgets/custom_text_button_for_fields_selection.dart';
import 'package:champs/constant.dart';
import 'package:champs/core/helpers/spaces.dart';
import 'package:champs/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../core/widgets/custom_search_button.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [

                     Container(
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile 2.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(800),
                          ),
                        ),
                      ),
                        horizontalSpace(12),
                        Column(
                          children: [
                            const Text(
                              'خديجة أشرف',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF101828),
                                fontSize: 18,
                                fontFamily: fontName,
                                fontWeight: FontWeight.w700,
                                height: 1.67,
                              ),
                            ),
                            const Text(
                              'UX UI Designer',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF475467),
                                fontSize: 14,
                                fontFamily: fontName,
                                fontWeight: FontWeight.w500,
                                height: 2.14,
                              ),
                            ),
                          ],
                        ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF98A1B2)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Icon(Icons.notifications_none_rounded),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomSearchButton(
                              width: double.infinity,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SearchScreen()));
                              }),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF98A1B2)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Icon(Icons.filter_alt_sharp),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: [
                          CustomToggleButton(label: 'التصميم'),
                          CustomToggleButton(label: 'تحليل البيانات'),
                          CustomToggleButton(label: 'تطوير المواقع'),
                          CustomToggleButton(label: 'صناعة المحتوى'),
                          CustomToggleButton(label: 'كتابة المحتوى'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 345,
                    child: Text(
                      'الأعلى تقييما',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF344054),
                        fontSize: 16,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w500,
                        height: 1.88,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProfileCard(
                          width: 255,
                          name: 'معتصم شعبان',
                          role: 'Product Designer',
                          imageUrl: 'assets/images/profile.png',
                          experience: '8 سنوات',
                          rating: '4.9',
                          numOfRating: '24',
                          sessions: '45 جلسة',
                          icon: Icon(Icons.star, color: Colors.amber, size: 16),
                        ),
                        SizedBox(width: 8),
                        ProfileCard(
                          width: 255,
                          name: 'إيمان عبدالله',
                          role: 'Product Designer',
                          imageUrl: 'assets/images/profile 2.png',
                          experience: '8 سنوات',
                          rating: '4.9',
                          numOfRating: '24',
                          sessions: '45 جلسة',
                          icon: Icon(Icons.star, color: Colors.amber, size: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: 345,
                    child: Text(
                      'الاقتراحات',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF344054),
                        fontSize: 16,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w500,
                        height: 1.88,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ProfileCard(
                    width: double.infinity,
                    name: 'معتصم شعبان',
                    role: 'Product Designer',
                    imageUrl: 'assets/images/profile.png',
                    experience: '8 سنوات',
                    rating: '4.9',
                    numOfRating: '24',
                    sessions: '45 جلسة',
                    icon: Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                  const SizedBox(height: 8),
                  const ProfileCard(
                    width: double.infinity,
                    name: 'ايمان عبدالله',
                    role: 'Product Designer',
                    imageUrl: 'assets/images/profile 2.png',
                    experience: '8 سنوات',
                    rating: '4.9',
                    numOfRating: '24',
                    sessions: '45 جلسة',
                    icon: Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                  const SizedBox(height: 8),
                  const ProfileCard(
                    width: double.infinity,
                    name: 'كريم سيد',
                    role: 'Product Designer',
                    imageUrl: 'assets/images/profile 3.png',
                    experience: '8 سنوات',
                    rating: '4.9',
                    numOfRating: '24',
                    sessions: '45 جلسة',
                    icon: Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                  const SizedBox(height: 8),
                  const ProfileCard(
                    width: double.infinity,
                    name: 'معتصم شعبان',
                    role: 'Product Designer',
                    imageUrl: 'assets/images/profile.png',
                    experience: '8 سنوات',
                    rating: '4.9',
                    numOfRating: '24',
                    sessions: '45 جلسة',
                    icon: Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
