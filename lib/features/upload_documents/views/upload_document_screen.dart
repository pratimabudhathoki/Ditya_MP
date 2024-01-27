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
  // int activeIndex = 0;
  ValueNotifier<int> activeIndex = ValueNotifier<int>(0);
  List<Widget> forms = [
    const PersonalInfoForm(),
    PhotoUpload(),
    const PassportUpload(),
    const CvUpload(),
    EducationDetail(),
    LanguageSelect(),
    WorkExperience(),
    BankDetail(),
    CompanySelect(active_index: 0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: SafeArea(
              child: ValueListenableBuilder<int>(
                  valueListenable: activeIndex,
                  builder: (context, value, child) {
                    return IconStepper(
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
                        Icon(
                          Icons.language,
                          color: AppColors.white,
                        ),
                        Icon(
                          Icons.work_history,
                          color: AppColors.white,
                        ),
                        Icon(
                          Icons.account_balance,
                          color: AppColors.white,
                        ),
                        Icon(
                          Icons.business,
                          color: AppColors.white,
                        ),
                      ],
                      enableNextPreviousButtons: false,
                      stepRadius: 16.0,
                      lineLength: 30,
                      activeStep: value,
                      activeStepBorderColor: AppColors.primary,
                      activeStepColor: AppColors.secondary,
                      stepColor: AppColors.primary,
                      onStepReached: (index) {
                       activeIndex.value=index;
                      },
                    );
                  }),
            ),
          ),
          const Gap(SizeManager.pagePadding),
          Expanded(
              child: SingleChildScrollView(
            child: ValueListenableBuilder(
              valueListenable: activeIndex,
              builder: (context, value, child) => forms[value],
            ),
          ))
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
         valueListenable: activeIndex,
        builder: (context, value, child) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: activeIndex.value == 0
                      ? null
                      : () {
                          activeIndex.value--;
                        },
                  child: Container(
                      height: 60.0,
                      alignment: Alignment.center,
                      color: activeIndex.value == 0
                          ? AppColors.secondary.withAlpha(90)
                          : AppColors.secondary,
                      child: Text(
                        "Previous",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      )),
                ),
              ),
              Flexible(
                child: InkWell(
                  onTap: () {
                    if (activeIndex.value == forms.length - 1) {
                      return context.go('/');
                      // return;
                    }
                    setState(() {
                      activeIndex.value++;
                    });
                  },
                  child: Container(
                      height: 60.0,
                      alignment: Alignment.center,
                      color: AppColors.primary,
                      child: Text(
                        "Next",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      )),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
