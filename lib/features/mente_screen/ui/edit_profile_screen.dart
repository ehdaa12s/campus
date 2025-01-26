import 'dart:io';
import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/widgets/edit_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _image;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _saveProfileData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileName', _nameController.text);
    await prefs.setString('profileJobTitle', _jobTitleController.text);
    await prefs.setString('profileDescription', _descriptionController.text);

    // Optionally save the image path
    if (_image != null) {
      await prefs.setString('profileImagePath', _image!.path);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("تم حفظ بيانات الملف الشخصي بنجاح!")),
    );
    Navigator.pop(context);
  }

  Future<void> _loadProfileData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _nameController.text = prefs.getString('profileName') ?? '';
      _jobTitleController.text = prefs.getString('profileJobTitle') ?? '';
      _descriptionController.text = prefs.getString('profileDescription') ?? '';

      final imagePath = prefs.getString('profileImagePath');
      if (imagePath != null && File(imagePath).existsSync()) {
        _image = File(imagePath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.gray350,
                          width: 1.5,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 80,
                        backgroundImage:
                            _image != null ? FileImage(_image!) : null,
                        child: _image == null
                            ? const Icon(
                                Icons.person_rounded,
                                size: 100,
                                color: Color(0xFF80808E),
                              )
                            : null,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0.5,
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: SvgPicture.asset(
                            AppSvgs.edit,
                            width: 24,
                            height: 24,
                            color: AppColors.gray350,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Name field
              EditCustomTextField(
                height: 80,
                labelText: "الاسم بالكامل",
                controller: _nameController,
              ),
              const SizedBox(height: 16),
              EditCustomTextField(
                height: 80,
                labelText: "المسمى الوظيفي",
                controller: _jobTitleController,
              ),
              const SizedBox(height: 16),
              EditCustomTextField(
                height: 140,
                labelText: "أضف وصفاً لنفسك",
                controller: _descriptionController,
              ),
              const SizedBox(height: 50),
              // Save and cancel buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 171,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: _saveProfileData,
                      child: const Text(
                        "حفظ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 171,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: AppColors.primary),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "إلغاء التعديلات",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
