import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/constants.dart';
import 'package:coffee_shop/core/shared_components/choose_file_button.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';

class EducationDetail extends StatefulWidget {
  EducationDetail({super.key});

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

// drop down of level
  String delault = "";
  var dropDownLevel = [
    {"title": "Under SlC", "value": "1"},
    {"title": "Secondary", "value": "2"},
    {"title": "Higher Secondary", "value": "3"},
    {"title": "PHD", "value": "4"},
    {"title": "", "value": "5"},
  ];
  var Items = ['Select Option', 'GPA', 'Percentage'];
  //drop down for gpa and percentage
  String selectedOption = 'Select an Option';
  TextEditingController gpaController = TextEditingController();
  TextEditingController percentageController = TextEditingController();
  TextEditingController schoolCollegeName = TextEditingController();

  // drop down of sector
  String selectedSector = 'Select Sector'; // Default value
  //drop down of year
  String showYear = ' Select Year';
  DateTime Selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const FormHeadline(title: "Educational Documents"),
        const Gap(SizeManager.pagePadding),
        const Text(
          "Provide your highest educational doucuments",
        ),
        const Gap(SizeManager.pagePadding),
        Container(
            padding: const EdgeInsets.all(10), //padding of outer Container
            child: DottedBorder(
              color: const Color.fromARGB(
                  255, 83, 83, 83), //color of dotted/dash line
              strokeWidth: 1, //thickness of dash/dots
              dashPattern: [5, 6],
              //dash patterns, 10 is dash width, 6 is space width
              child: Container(
                  //inner container
                  height: 180, //height of inner container
                  width: MediaQuery.sizeOf(context).width *
                      0.4, //width to 100% match to parent container.
                  color: const Color.fromARGB(
                      213, 253, 253, 252) //background color of inner container
                  ),
            )),
        ChooseFileButton(onTap: (file) {}),
        const Gap(SizeManager.pagePadding),
        Container(
          width: double.maxFinite,
         
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16.0),
          decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 148, 148, 148)),
          borderRadius: BorderRadius.circular(SizeManager.curveValue)
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isDense: true,
              value: delault,
              // isExpanded: true,
              menuMaxHeight: 300,
              items: [
                const DropdownMenuItem<String>(
                  value: "",
                  child: Text('Select your level'),
                ),
                ...dropDownLevel.map<DropdownMenuItem<String>>((data) {
                  return DropdownMenuItem(
                    value: data["value"],
                    child: Text(data["title"]!),
                  );
                }).toList(),
              ],
              onChanged: (Newvalue) {
                print(Newvalue);
                setState(() {
                  delault = Newvalue!;
                });
              },
            ),
          ),
        ),
        //  const Gap(SizeManager.pagePadding),
        const PrimaryTextField(label: "",hintText: 'School/College name',),
        //  const Gap(SizeManager.pagePadding),
        // Container(
        //   height: 40,
        //   decoration: BoxDecoration(
        //       border: Border.all(
        //         width: 1,
        //         color: Colors.black54,
        //       ),
        //       borderRadius: BorderRadius.circular(10)),
        //   width: MediaQuery.of(context).size.width / 2,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(showYear),
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           SelectYear(context);
        //         },
        //         child: const Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: Icon(Icons.calendar_month),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
         const PrimaryTextField(label: "",hintText: 'School/College name',),
         ]),
    );
  }

  SelectYear(context) async {
    print("call date picker");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Year'),
          content: SizedBox(
            height: 250,
            width: 250,
            child: YearPicker(
                firstDate: DateTime(DateTime.now().year - 40, 1),
                initialDate: DateTime.now(),
                lastDate: DateTime(2025),
                selectedDate: Selectdate,
                onChanged: (DateTime dateTime) {
                  setState(() {
                    Selectdate = dateTime;
                    showYear = "${dateTime.year}";
                  });
                  Navigator.pop(context);
                }),
          ),
        );
      },
    );
  }
}
