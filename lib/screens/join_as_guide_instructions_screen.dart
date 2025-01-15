import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class JoinAsGuideInstructionsScreen extends StatelessWidget {
  const JoinAsGuideInstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'هل تريد الانضمام كموجه؟',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
            const Text(
              'إليك إرشادات مجتمع Campus !',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344054),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'للاستمرار، نرجو قراءة وقبول إرشادات المجتمع. يساعدنا ذلك في الحفاظ على تجربة موثوقة لجميع أعضاء المجتمع.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF667085),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'كن محترفًا',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344054),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'نحترم الوقت والطاقة والجهود التي قدمها المجتمع لمنصة Campus. ويجب أن تعكس تفاعلاتنا هذا الاحترام.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF667085),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'كن ممتنًا',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344054),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'نقدر فعل الإحسان ومشاركة الخبرات، وما تعلمته وتنموه من خلال دروس وتجارب الآخرين.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF667085),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'تفاعل بإيجابية',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF344054),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'سدد الجميل بالطاقة والجهد، من خلال الالتزام بالحضور والتفاعل الجاد وتقديم أفضل ما لدينا.',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF667085),
              ),
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
