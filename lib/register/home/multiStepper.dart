import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/app_size.dart';
import 'package:coffee_shop/register/home/CompanySelect.dart';
import 'package:coffee_shop/register/home/Educationdetail.dart';
import 'package:coffee_shop/register/home/bank/bankDetail.dart';
import 'package:coffee_shop/register/home/cv/resume.dart';
import 'package:coffee_shop/register/home/language.dart';
import 'package:coffee_shop/register/home/passportUpload.dart';
import 'package:coffee_shop/register/home/personal_info_form.dart';
import 'package:coffee_shop/register/home/photoUpload.dart';
import 'package:coffee_shop/register/home/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class MUltiStepperpage extends StatefulWidget {
  const MUltiStepperpage({super.key});

  @override
  State<MUltiStepperpage> createState() => _MultiStepperState();
}

class _MultiStepperState extends State<MUltiStepperpage> {
  int activeIndex = 0;
  List<Widget> forms = [
    const PersonalInfoForm(),
    PhotoUpload(),
    PassportUpload(),
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
                onStepReached: (index){
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
          ),
          const Gap(AppSize.pagePadding),
           Expanded(
              child: SingleChildScrollView(
            child: forms[activeIndex],
          ))
        ],
      ),
    );
  }





  Widget FifthStep() {
    return languageSelect(
      active_index: 4,
    );
  }

  Widget SixthStep() {
    return CompanySelect(
      active_index: 5,
    );
  }

  Widget SeventhStep() {
    return BankDetail(
      active_index: 6,
    );
  }

  Widget EigthStep() {
    return WorkExperience(active_index: 7);
  }

  Widget NinthStep() {
    return EducationDetail(active_index: 8);
  }
}
