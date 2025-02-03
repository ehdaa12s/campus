import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/features/setting_screen/ui/widgets/privacy_screen.dart';
import 'package:flutter/material.dart';

class SecuirtyScreen extends StatelessWidget {
  const SecuirtyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('الأمان و الخصوصية ',
            style: AppTextStyles.font20blackBalooBhaijaan2Bold),
      ),
      body: Container(

        height: 120,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          ListTile(
            title: Text('البريد الالكتروني',
                textAlign: TextAlign.right,
                style: AppTextStyles.font16Gray900BalooBhaijaan2w500),
            subtitle: Text('khadejaashraf@gmail.com',
                textAlign: TextAlign.right,
                style: AppTextStyles.font14Gray500BalooBhaijaanw400),
            trailing: GestureDetector(
              onTap: () {

              },
              child: Text('Google Account',
                  style: AppTextStyles.font14Blue100BalooBhaijaanw500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(thickness: 1, height: 1),
          ),
          GestureDetector(
            child:  Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 20.0),child:
            Text(
              'حذف الحساب',
              style: AppTextStyles.font16Blue100BalooBhaijaanw500,
              textAlign: TextAlign.right,
            ),
            ),
            onTap: () {
             showDeleteAccountDialog(context,"");
            },
          ),


        ]),
      ),
    );
  }
}
