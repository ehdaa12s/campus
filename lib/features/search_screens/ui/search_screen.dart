import 'package:champs/core/widgets/custom_search_button.dart';
import 'package:champs/constant.dart';

import 'package:champs/features/search_screens/ui/result_search.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    CustomSearchButton(
                      text:    'ابحث عن افضل الموجهين في الوطن العربي ',
                      width: 296,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResultSearch()));
                      },
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
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 177,
                      child: Text(
                        'عمليات البحث الاخيرة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF101828),
                          fontSize: 20,
                          fontFamily: fontName,
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 39,
                      child: Text(
                        'مسح',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF667085),
                          fontSize: 15,
                          fontFamily: fontName,
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text(
                    'Social Media',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 13,
                      fontFamily: fontName,
                      fontWeight: FontWeight.w400,
                      height: 2.31,
                    ),
                  ),
                ),
                const Divider(
                  height: 0.2,
                  color: Color(0xFF98A1B2),
                ),
                const ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text(
                    'copy Writing',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA4A6AC),
                      fontSize: 13,
                      fontFamily: fontName,
                      fontWeight: FontWeight.w400,
                      height: 2.31,
                    ),
                  ),
                ),
                const Divider(
                  height: 0.2,
                  color: Color(0xFFA4A6AC),
                ),
                const ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text(
                    'IOS Developer',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA4A6AC),
                      fontSize: 13,
                      fontFamily: fontName,
                      fontWeight: FontWeight.w400,
                      height: 2.31,
                    ),
                  ),
                ),
                const Divider(
                  height: 0.2,
                  color: Color(0xFF98A1B2),
                ),
              ],
            ),
          )),
    );
  }
}
