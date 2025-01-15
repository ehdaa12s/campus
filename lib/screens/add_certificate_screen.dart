import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:champs/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCertificateScreen extends StatefulWidget {
  const AddCertificateScreen({super.key});

  @override
  State<AddCertificateScreen> createState() => _AddCertificateScreenState();
}

class _AddCertificateScreenState extends State<AddCertificateScreen> {
  final TextEditingController issueDateController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'إضافة الشهادة',
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
              buildTextField(label: 'اسم الشهادة', hint: 'AI in UX/UI Design'),
              const SizedBox(height: 16),
              buildTextField(
                label: 'الجهة المانحة للشهادة',
                hint: 'The Interaction Design Foundation',
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
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: issueDateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'تاريخ الإصدار',
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
                        const Text(
                          'تاريخ الانتهاء',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: expiryDateController,
                          readOnly: true,
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
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000), // Earliest date
                              lastDate: DateTime(2100), // Latest date
                              locale: const Locale('ar'), // Arabic locale
                            );

                            if (pickedDate != null) {
                              expiryDateController.text =
                                  "${pickedDate.toLocal()}".split(' ')[0];
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              buildTextField(label: 'رقم الشهادة', hint: 'Credential ID 10485'),
              const SizedBox(height: 16),
              buildTextField(
                label: 'رابط الشهادة',
                hint: 'https://app.uxcel.com/certificates/F6T8H05JM9JI',
              ),
              const SizedBox(height: 155),
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

  Widget buildTextField({required String label, required String hint}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget buildDateField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        CustomTextField(label: label)
      ],
    );
  }
}
