import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/utils/easy_loading_dialog.dart';
import 'package:coffee_shop/core/utils/utils.dart';
import 'package:coffee_shop/dependency_injection.dart';
import 'package:coffee_shop/features/upload_documents/bloc/upload_doc_bloc.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/CompanySelect.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/Educationdetail.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/bankDetail.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/resume.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/language.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/passportUpload.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/personal_info_form.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/photoUpload.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  List<Widget> forms = [
    const PersonalInfoForm(),
    PhotoUpload(),
    const PassportUpload(),
    const CvUpload(),
    EducationDetail(),
    LanguageSelect(),
    const WorkExperience(),
    BankDetail(),
    CompanySelect(active_index: 0)
  ];
  _onNext(BuildContext context, int step) {
    switch (step) {
      case 0:
        context
            .read<UploadDocBloc>()
            .add(const UploadDocEvent.uploadPersonalInfo());
        break;
      case 1:
        context.read<UploadDocBloc>().add(const UploadDocEvent.uploadPhotos());
        break;
      case 2:
        context
            .read<UploadDocBloc>()
            .add(const UploadDocEvent.uploadPassportInfo());
        break;
        case 3:
        context
            .read<UploadDocBloc>()
            .add(const UploadDocEvent.uploadResume());
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<UploadDocBloc>(),
      child: Builder(builder: (context) {
        return Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.white,
            body: BlocConsumer<UploadDocBloc, UploadDocState>(
              listener: ((context, state) {
                if (state.uploadStatus == UploadStatus.uploading) {
                  showLoading();
                } else if (state.uploadStatus == UploadStatus.uploadFailure) {
                  hideLoading();
                  showDefaultSnackBar(context);
                } else if (state.uploadStatus == UploadStatus.uploaded) {
                  hideLoading();
                } else if (state.hasValidationError) {
                  showDefaultSnackBar(context);
                } else {
                  hideLoading();
                }
              }),
              builder: (context, state) {
                return Column(
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
                          activeStep: state.step,
                          activeStepBorderColor: AppColors.primary,
                          activeStepColor: AppColors.secondary,
                          stepColor: AppColors.primary,
                          enableStepTapping: false,
                        ),
                      ),
                    ),
                    const Gap(SizeManager.pagePadding),
                    Expanded(
                        child: SingleChildScrollView(
                      child: forms[state.step],
                    ))
                  ],
                );
              },
            ),
            bottomNavigationBar: BlocBuilder<UploadDocBloc, UploadDocState>(
              builder: (context, state) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: InkWell(
                        splashColor: Colors.black,
                        // onTap: activeIndex.value == 0
                        //     ? null
                        //     : () {
                        //         activeIndex.value--;
                        //       },

                        child: Container(
                            height: 60.0,
                            alignment: Alignment.center,
                            color: state.step == 0
                                ? AppColors.secondary.withAlpha(90)
                                : AppColors.secondary,
                            child: Text(
                              "Previous",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () => _onNext(context, state.step),
                        child: Container(
                            height: 60.0,
                            alignment: Alignment.center,
                            color: AppColors.primary,
                            child: Text(
                              "${state.step}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )),
                      ),
                    ),
                  ],
                );
              },
            ));
      }),
    );
  }
}
