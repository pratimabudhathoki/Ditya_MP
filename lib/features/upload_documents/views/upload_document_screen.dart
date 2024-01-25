import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/features/upload_documents/views/CompanySelect.dart';
import 'package:coffee_shop/features/upload_documents/views/Educationdetail.dart';
import 'package:coffee_shop/features/upload_documents/views/bankDetail.dart';
import 'package:coffee_shop/features/upload_documents/views/resume.dart';
import 'package:coffee_shop/features/upload_documents/views/language.dart';
import 'package:coffee_shop/features/upload_documents/views/passportUpload.dart';
import 'package:coffee_shop/features/upload_documents/views/personal_info_form.dart';
import 'package:coffee_shop/features/upload_documents/views/photoUpload.dart';
import 'package:coffee_shop/features/upload_documents/views/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class UploadDocumentScreen extends StatefulWidget {
  const UploadDocumentScreen({super.key});

  @override
  State<UploadDocumentScreen> createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  int activeIndex = 0;
  List<Widget> forms = [
    const PersonalInfoForm(),
    PhotoUpload(),
    const PassportUpload(),
    EducationDetail(),
    const CvUpload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: SafeArea(
              child: IconStepper(
                icons: const [
                  Icon(
                    Icons.person,
                    color: AppColors.white,
                  ),
                  Icon(
                    Icons.photo,
                    color: AppColors.white,
                  ),
                  Icon(
                    Icons.edit_document,
                    color: AppColors.white,
                  ),
                  Icon(
                    Icons.school,
                    color: AppColors.white,
                  ),
                  Icon(
                    Icons.document_scanner,
                    color: AppColors.white,
                  ),
                ],
                enableNextPreviousButtons: false,
                stepRadius: 16.0,
                lineLength: 30,
                activeStep: activeIndex,
                activeStepBorderColor: AppColors.primary,
                activeStepColor: AppColors.secondary,
                stepColor: AppColors.primary,
                onStepReached: (index) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
          ),
          const Gap(SizeManager.pagePadding),
          Expanded(
              child: SingleChildScrollView(
            child: forms[activeIndex],
          ))
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (activeIndex == 4) {
            return context.go('/');
            // return;
          }
          setState(() {
            activeIndex++;
          });
        },
        child: Container(
            height: 60.0,
            alignment: Alignment.center,
            width: double.maxFinite,
            color: AppColors.primary,
            child: Text(
              "Next",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            )),
      ),
    );
  }
}
