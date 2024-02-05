import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class BankDetail extends StatefulWidget {
  BankDetail({super.key});

  @override
  State<BankDetail> createState() => _BankDetailState();
}

class _BankDetailState extends State<BankDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormHeadline(title: "Bank Details"),
          const Gap(SizeManager.pagePadding),
          const Text('Please provide your bank details'),
          const Gap(12.0),
          PrimaryTextField(
              controller: TextEditingController(), label: "Bank name"),
          const Gap(SizeManager.pagePadding),
          PrimaryTextField(
              controller: TextEditingController(), label: "Branch"),
          const Gap(SizeManager.pagePadding),
          PrimaryTextField(
              controller: TextEditingController(),
              label: "Account holder's name"),
          const Gap(SizeManager.pagePadding),
          PrimaryTextField(
              controller: TextEditingController(), label: "Account number"),
        ],
      ),
    );
  }
}
