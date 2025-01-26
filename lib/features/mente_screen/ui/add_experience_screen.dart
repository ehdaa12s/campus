import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/build_dropdown_field.dart';
import 'package:champs/core/widgets/build_text_field.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddExperienceScreen extends StatefulWidget {
  const AddExperienceScreen({super.key});

  @override
  State<AddExperienceScreen> createState() => _AddExperienceScreenState();
}

class _AddExperienceScreenState extends State<AddExperienceScreen> {
  final TextEditingController issueDateController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'إضافة الخبرة',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            AppSvgs.arrowRight,
            width: 28,
            height: 28,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back navigation
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextField(
                label: 'المسمى الوظيفي',
                hint: 'Senior Product Designer',
              ),
              const SizedBox(height: 16),
              buildDropdownField(
                label: 'نوع الدوام',
                hint: 'Full-time',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              buildTextField(
                label: 'اسم الشركة او المؤسسة',
                hint: 'Aaseya',
              ),
              const SizedBox(height: 16),
              buildDropdownField(
                label: 'الموقع الجغرافي',
                hint: 'Riyadh, Saudi Ararbia',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              buildDropdownField(
                label: 'طبيعة الموقع',
                hint: 'On Site',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  // First Column for Issue Date
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'تاريخ الإصدار',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: issueDateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'تاريخ البدء',
                            suffixIcon: SizedBox(
                              width: 20,
                              height: 20,
                              child: SvgPicture.asset(
                                AppSvgs.calender,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000), // Earliest date
                              lastDate: DateTime(2100), // Latest date
                              locale: const Locale('ar'), // Arabic locale
                            );

                            if (pickedDate != null) {
                              issueDateController.text =
                                  "${pickedDate.toLocal()}".split(' ')[0];
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Second Column for Expiry Date
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تاريخ الإنتهاء',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: isChecked ? Colors.grey : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: expiryDateController,
                          readOnly: true,
                          enabled: !isChecked,
                          decoration: InputDecoration(
                            hintText: 'تاريخ الانتهاء',
                            suffixIcon: SizedBox(
                              width: 20,
                              height: 20,
                              child: SvgPicture.asset(
                                AppSvgs.calender,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          onTap:
                              !isChecked // Prevent opening the date picker if disabled
                                  ? () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate:
                                            DateTime(2000), // Earliest date
                                        lastDate: DateTime(2100), // Latest date
                                        locale:
                                            const Locale('ar'), // Arabic locale
                                      );

                                      if (pickedDate != null) {
                                        expiryDateController.text =
                                            "${pickedDate.toLocal()}"
                                                .split(' ')[0];
                                      }
                                    }
                                  : null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.scale(
                    scale: 1.1, // Adjust size of checkbox
                    child: Checkbox(
                      value: isChecked,
                      side: const BorderSide(
                          color: Color(0xFFD1D1D6), width: 1.5),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor:
                          AppColors.primary, // Active color when checked
                      checkColor: Colors.white, // Color of check mark
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: const Text(
                      'مازلت اعمل في الشركة',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CustomButton(
                text: 'حفظ',
                onPressed: () {
                  // Save logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
