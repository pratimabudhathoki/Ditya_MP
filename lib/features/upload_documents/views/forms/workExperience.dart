import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/Educationdetail.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:csc_picker/csc_picker.dart';

class WorkExperience extends StatefulWidget {
  
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormHeadline(title: "Work Experience"),
          const Gap(SizeManager.pagePadding),
          CSCPicker(
           searchBarRadius: SizeManager.curveValue,
            dropdownDialogRadius: SizeManager.curveValue,
                  
            onCityChanged: (city) {},
            onStateChanged: (state) {},
            onCountryChanged: (country) {},
          ),
        const Gap(SizeManager.pagePadding),
          PrimaryTextField(controller: TextEditingController(), label: "Company Name"),
         
          const Gap(SizeManager.pagePadding),
          PrimaryTextField(controller: TextEditingController(), label: "Position"),
         
          
          const Gap(SizeManager.pagePadding),
          PrimaryTextField(controller: TextEditingController(), label: "Description",
          maxLines: 5,
          ),
         
         
        ],
      ),
    );
  }
}
