import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_text_button_for_boarding.dart';
import 'package:flutter/material.dart';

import 'ui/widgets/custom_listtitle_for_personal_edit.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('المعلومات الشخصية',
            style: AppTextStyles.font20blackBalooBhaijaan2Bold),
      ),
      body: Column(
        children: [
          Container(
            width: 344,
            height: 468,
            margin: const EdgeInsets.all(26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomListTileForPersonalEdit(
                title: 'الاسم',
                subtitle: 'خديجة اشرف',
                onEdit: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, height: 1),
              ),
              CustomListTileForPersonalEdit(
                title: 'الجنس',
                subtitle: 'أنثى',
                onEdit: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, height: 1),
              ),
              CustomListTileForPersonalEdit(
                title: 'البلد',
                subtitle: 'القاهرة, مصر ',
                onEdit: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, height: 1),
              ),
              CustomListTileForPersonalEdit(
                title: 'نبذة عني',
                subtitle: 'هذا المحتوى قابل للتغيير هذا المحتوى ',
                onEdit: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, height: 1),
              ),
              CustomListTileForPersonalEdit(
                title: 'رقم الهاتف',
                subtitle: '01116304457',
                onEdit: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, height: 1),
              ),
            ]),
          ),
          CustomTextButtonForBoarding(
              buttonText: 'تحديث', width: 345, height: 54, onPressed: () {}),
        ],
      ),
    );
  }
}
