import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/features/upload_documents/views/forms/bankDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class CompanySelect extends StatefulWidget {
  int active_index = 5;
  CompanySelect({super.key, required this.active_index});

  @override
  State<CompanySelect> createState() => _CompanySelectState();
}

class _CompanySelectState extends State<CompanySelect> {
  var dropDownListData = [
    {"title": "Information Technology(IT)", "value": "1"},
    {"title": "Engineering", "value": "2"},
    {"title": "Production", "value": "3"},
    {"title": "Manufacturing", "value": "4"},
    {"title": "Labor", "value": "5"},
    {"title": "Other", "value": "6"},
  ];
  String delaultValue = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FormHeadline(title: "Company selection"),
          const Gap(SizeManager.pagePadding),
          const Text('What category of companies are you looking for?'),
          const Gap(SizeManager.pagePadding),
          InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.all(10)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isDense: true,
                value: delaultValue,
                // isExpanded: true,
                menuMaxHeight: 300,
                items: [
                  const DropdownMenuItem<String>(
                    child: Text('Select Company Category'),
                    value: "",
                  ),
                  ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                    return DropdownMenuItem(
                      child: Text(data["title"]!),
                      value: data["value"],
                    );
                  }).toList(),
                ],
                onChanged: (Newvalue) {
                  print(Newvalue);
                  setState(() {
                    delaultValue = Newvalue!;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
