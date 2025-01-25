import 'package:champs/core/widgets/custom_text_button_for_fields_selection.dart';
import 'package:flutter/widgets.dart';

class ScrollMessgageButton extends StatelessWidget {
  const ScrollMessgageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          children: [
            CustomToggleButton(
              label: 'الواردة',
            ),
            CustomToggleButton(
              label: 'غير المقروءة',
            ),
            CustomToggleButton(
              label: 'الأرشيف',
            ),
            CustomToggleButton(
              label: 'طلبات المراسلة',
            ),
          ],
        ),
      ),
    );
  }
}
