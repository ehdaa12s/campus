import 'package:champs/constant.dart';
import 'package:flutter/material.dart';
import 'package:champs/core/widgets/custom_card_for_notifaction.dart';

class NotifcationScreen extends StatefulWidget {
  const NotifcationScreen({super.key});

  @override
  State<NotifcationScreen> createState() => _NotifcationScreenState();
}

class _NotifcationScreenState extends State<NotifcationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                      'الاشعارات',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00001D),
                        fontSize: 24,
                        fontFamily: fontName,
                        fontWeight: FontWeight.w700,
                        height: 1.50,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'معتصم شعبان ',
                subTitle: 'Product Designer',
                imageUrl: 'assets/images/profile.png',
                reminder:
                    'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'آية عبدالله',
                subTitle: 'Senior UI UX Designer',
                imageUrl: 'assets/images/profile 2.png',
                reminder:
                    'تذكير: جلستك القادمة مع [آية عبدالله] تبدأ خلال 30 دقيقة',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'كريم سيد',
                subTitle: 'Product Manager',
                imageUrl: 'assets/images/profile 3.png',
                reminder: 'لا تنسَ تقديم تقييم لجلسة الإرشاد مع [كريم سيد]',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'نهال سراج',
                subTitle: 'Graphic Designer',
                imageUrl: 'assets/images/profile 2.png',
                reminder:
                    'لقد أرسل المنتور [اسم المنتور] موارد جديدة. انقر للاطلاع عليها',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'محمد المسلماني',
                subTitle: 'Data Analyist',
                imageUrl: 'assets/images/profile 3.png',
                reminder:
                    'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomCardForNotifaction(
                title: 'خديجة أشرف',
                subTitle: 'Product Designer',
                imageUrl: 'assets/images/profile 2.png',
                reminder:
                    'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
