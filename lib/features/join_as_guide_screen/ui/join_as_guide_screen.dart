import 'dart:io';

import 'package:champs/core/constants/app_assets.dart';
import 'package:champs/core/helpers/extensions.dart';
import 'package:champs/core/routing/routes.dart';
import 'package:champs/core/themes/app_colors.dart';
import 'package:champs/core/themes/app_text_styles.dart';
import 'package:champs/core/widgets/build_dropdown_field.dart';
import 'package:champs/core/widgets/build_text_field.dart';
import 'package:champs/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'dart:async';

class JoinAsGuideScreen extends StatefulWidget {
  const JoinAsGuideScreen({super.key});

  @override
  State<JoinAsGuideScreen> createState() => _JoinAsGuideScreenState();
}

class _JoinAsGuideScreenState extends State<JoinAsGuideScreen> {
  double uploadProgress = 0.0;
  String fileName = '';
  String fileSize = '';
  String filePath = '';
  String statusMessage = '';
  String errorMessage = '';
  double uploaded = 0.0;

  Future<void> pickAndUploadFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: [
          'pdf',
          'doc',
          'docx'
        ], // Restrict to specific file types
      );

      if (result != null) {
        PlatformFile file = result.files.first;

        if (file.size > 15 * 1024 * 1024) {
          // File is too large
          setState(() {
            uploadProgress = -1;
            fileName = file.name;
            errorMessage = 'فشل التحميل، يرجى المحاولة مرة أخرى';
          });
        } else {
          setState(() {
            fileName = file.name;
            fileSize = '${file.size ~/ 1024} KB';
          });

          // Simulate upload progress
          for (int i = 0; i <= 100; i++) {
            await Future.delayed(const Duration(milliseconds: 50), () {
              setState(() {
                uploadProgress = i / 100;
              });
            });
          }

          // After progress reaches 100%, wait for 4 seconds
          await Future.delayed(const Duration(seconds: 1));

          // After upload completes successfully
          setState(() {
            fileName = file.name;
            fileSize = '${file.size ~/ 1024} KB';
            filePath = file.path!;
            uploaded = 1.0;
            uploadProgress = 1.01;
          });
        }
      } else {
        // User canceled the picker
        setState(() {
          fileName = 'File picking canceled.';
          uploadProgress = 0.0;
        });
      }
    } catch (e) {
      setState(() {
        fileName = 'Error: $e';
        uploadProgress = 0.0;
      });
    }
  }

  Future<void> openFile() async {
    final result = await OpenFile.open(filePath);
    if (result.type != ResultType.done) {
      setState(() {
        fileName = 'Error opening file: ${result.message}';
      });
    }
  }

  Future<void> deleteFile() async {
    final file = File(filePath);

    try {
      if (await file.exists()) {
        await file.delete(); // Deletes the file
        setState(() {
          filePath = '';
          uploadProgress = 0;
          uploaded = 0;
          statusMessage = 'File deleted successfully!';
        });
      } else {
        setState(() {
          statusMessage = 'File does not exist!';
        });
      }
    } catch (e) {
      setState(() {
        statusMessage = 'Error deleting file: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                'انضم كموجه مهني',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Specialization Dropdown
              buildDropdownField(
                label: 'التخصص',
                hint: 'النص المقترح',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              // Years of Experience
              buildDropdownField(
                label: 'عدد سنوات الخبرة',
                hint: 'النص المقترح',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              // Target Audience
              buildDropdownField(
                label: 'الفئة المستهدفة من المتدربين',
                hint: 'النص المقترح',
                items: ['Option 1', 'Option 2', 'Option 3'],
                onChanged: (String? value) {},
              ),
              const SizedBox(height: 16),
              // About Me
              buildTextField(
                label: 'نبذة عني',
                hint: 'النص المقترح',
                height: 150,
              ),
              const SizedBox(height: 20),
              // About Me
              buildTextField(
                label: 'ملاحظاتك',
                hint: 'اكتب ملاحظاتك التي تريد من المتدرب معرفتها و تزويدك بها',
                height: 150,
              ),
              const SizedBox(height: 20),
              // Show upload progress if uploading
              if (uploadProgress <= 1.0 && uploadProgress > 0.0) ...[
                // Show file name and success message if upload is complete
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Success container
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFF98A2B3),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Document SVG icon
                              SvgPicture.asset(
                                AppSvgs.document,
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 15),
                              // File name and message
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fileName,
                                      style: AppTextStyles
                                          .fornt15RedBalooBhaijaan2w500,
                                    ),
                                    const SizedBox(height: 5),
                                    Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Text(fileSize,
                                          style: AppTextStyles
                                              .fornt13Gray400BalooBhaijaan2),
                                    ),
                                  ],
                                ),
                              ),
                              if (uploadProgress == 1.0)
                                // trash icon
                                SvgPicture.asset(
                                  AppSvgs.tickCircle,
                                  width: 25,
                                  height: 25,
                                ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 40),
                                height: 6,
                                width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[300],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: LinearProgressIndicator(
                                    value: uploadProgress,
                                    backgroundColor: Colors.transparent,
                                    minHeight: 10,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      uploadProgress == 1.0
                                          ? Colors.green
                                          : AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                "${(uploadProgress * 100).toStringAsFixed(0)}%",
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else if (uploaded == 1.0) ...[
                // Show file name and success message if upload is complete
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Success container
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFF98A2B3),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Document SVG icon
                              SvgPicture.asset(
                                AppSvgs.document,
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(width: 15),
                              // File name and message
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(fileName,
                                        style: AppTextStyles
                                            .fornt15RedBalooBhaijaan2w500),
                                    const SizedBox(height: 5),
                                    Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Text(fileSize,
                                          style: AppTextStyles
                                              .fornt13Gray400BalooBhaijaan2),
                                    ),
                                    const SizedBox(height: 5),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: const Size(0, 0),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {
                                        openFile();
                                      },
                                      child: Text('اضغط للعرض',
                                          style: AppTextStyles
                                              .font14PrimaryBalooBhaijaan2w600),
                                    ),
                                  ],
                                ),
                              ),
                              // Success checkmark icon
                              InkWell(
                                onTap: () {
                                  deleteFile();
                                },
                                child: SvgPicture.asset(
                                  AppSvgs.trash,
                                  width: 25,
                                  height: 25,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else if (uploadProgress == -1) ...[
                // Show file name and error message if upload is not complete
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Failed container
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xFF98A2B3),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Document SVG icon
                              SvgPicture.asset(
                                AppSvgs.document,
                                width: 25,
                                height: 25,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 15),
                              // File name and message
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(errorMessage,
                                        style: AppTextStyles
                                            .fornt15RedBalooBhaijaan2w500),
                                    const SizedBox(height: 5),
                                    Text(fileName,
                                        style: AppTextStyles
                                            .fornt13RedBalooBhaijaan2),
                                    const SizedBox(height: 5),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: const Size(0, 0),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          uploadProgress = 0.0;
                                        });
                                      },
                                      child: Text(
                                        'حاول مجددا',
                                        style: AppTextStyles
                                            .fornt15RedBalooBhaijaan2w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ] else ...[
                // Show the upload container if the file hasn't been uploaded yet
                GestureDetector(
                  onTap: pickAndUploadFile,
                  child: Container(
                    height: 137,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppSvgs.upload,
                            width: 44,
                            height: 44,
                          ),
                          const SizedBox(height: 10),
                          Text('اضغط لرفع السيرة الذاتية',
                              style: AppTextStyles
                                  .font14PrimaryBalooBhaijaan2w600),
                          const SizedBox(height: 5),
                          const Text(
                            '(الحد الأقصى لحجم الملف: 25 MB)',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF667085),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],

              // Retry Button if upload fails
              if (fileName.contains('Error')) ...[
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: pickAndUploadFile,
                    child: const Text('Try Again'),
                  ),
                ),
              ],
              const SizedBox(height: 34),
              CustomButton(
                  text: 'انضم',
                  onPressed: () {
                    context.pushNamed(Routes.underReviewScreen);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
