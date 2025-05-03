
import 'package:champs/features/notification/ui/widget/custom_card_for_notifaction.dart';
import 'package:flutter/cupertino.dart';

class NotificationBodySection extends StatelessWidget {
  const NotificationBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCardForNotifaction(
          title: 'معتصم شعبان ',
          subTitle: 'Product Designer',
          imageUrl: 'assets/images/profile.png',
          reminder:
          'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
        ),
        SizedBox(
          height: 16,
        ),
        CustomCardForNotifaction(
          title: 'آية عبدالله',
          subTitle: 'Senior UI UX Designer',
          imageUrl: 'assets/images/profile 2.png',
          reminder:
          'تذكير: جلستك القادمة مع [آية عبدالله] تبدأ خلال 30 دقيقة',
        ),
        SizedBox(
          height: 16,
        ),
        CustomCardForNotifaction(
          title: 'كريم سيد',
          subTitle: 'Product Manager',
          imageUrl: 'assets/images/profile 3.png',
          reminder: 'لا تنسَ تقديم تقييم لجلسة الإرشاد مع [كريم سيد]',
        ),
        SizedBox(
          height: 16,
        ),
        CustomCardForNotifaction(
          title: 'نهال سراج',
          subTitle: 'Graphic Designer',
          imageUrl: 'assets/images/profile 2.png',
          reminder:
          'لقد أرسل المنتور [اسم المنتور] موارد جديدة. انقر للاطلاع عليها',
        ),
        SizedBox(
          height: 16,
        ),
        CustomCardForNotifaction(
          title: 'محمد المسلماني',
          subTitle: 'Data Analyist',
          imageUrl: 'assets/images/profile 3.png',
          reminder:
          'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
        ),
        SizedBox(
          height: 16,
        ),
        CustomCardForNotifaction(
          title: 'خديجة أشرف',
          subTitle: 'Product Designer',
          imageUrl: 'assets/images/profile 2.png',
          reminder:
          'تم تأكيد موعد الجلسة يوم 27 مايو - الساعه 4:00 - 4:30 ',
        ),
      ],
    );
  }
}
