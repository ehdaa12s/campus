import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class JoinAsGuideInstructionsScreen extends StatelessWidget {
  const JoinAsGuideInstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('هل تريد الانضمام كموجه؟',
            style: AppTextStyles.font20blackBalooBhaijaan2Bold),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('إليك إرشادات مجتمع Campus !',
                style: AppTextStyles.fornt18Gray750BalooBhaijaan2Bold),
            const SizedBox(height: 10),
            Text(
              'للاستمرار، نرجو قراءة وقبول إرشادات المجتمع. يساعدنا ذلك في الحفاظ على تجربة موثوقة لجميع أعضاء المجتمع.',
              style: AppTextStyles.fornt14Gray500BalooBhaijaan2
             
            ),
            const SizedBox(height: 20),
            Text(
              'كن محترفًا',
              style: AppTextStyles.fornt16Gray700BalooBhaijaan2Bold
            ),
            const SizedBox(height: 8),
            Text(
              'نحترم الوقت والطاقة والجهود التي قدمها المجتمع لمنصة Campus. ويجب أن تعكس تفاعلاتنا هذا الاحترام.',
              style: AppTextStyles.fornt14Gray500BalooBhaijaan2
            ),
            const SizedBox(height: 20),
            Text(
              'كن ممتنًا',
              style: AppTextStyles.fornt16Gray700BalooBhaijaan2Bold
            ),
            const SizedBox(height: 8),
            Text(
              'نقدر فعل الإحسان ومشاركة الخبرات، وما تعلمته وتنموه من خلال دروس وتجارب الآخرين.',
              style: AppTextStyles.fornt14Gray500BalooBhaijaan2
            ),
            const SizedBox(height: 20),
            Text(
              'تفاعل بإيجابية',
              style: AppTextStyles.fornt16Gray700BalooBhaijaan2Bold
            ),
            const SizedBox(height: 8),
            Text(
              'سدد الجميل بالطاقة والجهد، من خلال الالتزام بالحضور والتفاعل الجاد وتقديم أفضل ما لدينا.',
              style: AppTextStyles.fornt14Gray500BalooBhaijaan2
            ),
            const Spacer(),
            CustomButton(
              text: 'أوافق',
              onPressed: () {
                Navigator.pushNamed(context, Routes.joinAsGuideScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
