import 'package:coffee_shop/core/constants/constants.dart';
import 'package:coffee_shop/core/widgets/form_headline.dart';
import 'package:coffee_shop/register/home/language.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';

class CvUpload extends StatefulWidget {
  const CvUpload({super.key});

  @override
  State<CvUpload> createState() => _CvUploadState();
}

class _CvUploadState extends State<CvUpload> {
  XFile? image;

  final ImagePicker picker = ImagePicker();
  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FormHeadline(title: "Resume Upload"),
          const Gap(AppSize.pagePadding),
          DottedBorder(
            color:
                const Color.fromARGB(255, 83, 83, 83), 
            strokeWidth: 1, 
            dashPattern:const [5, 5],
           
            child: Container(
               
                height: 300, 
                width: double
                    .infinity,
                color: const Color.fromARGB(213, 253, 253,
                    252)
                ),
          ),
          
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  getImage();
                },
                child: Container(
                   padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 51, 92),
                      border: Border.all(style: BorderStyle.solid)),
                  child: Text(
                    "Choose File",
                    style: GoogleFonts.lora(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid)),
                  child: Text(
                    "Upload your Cv/Resume",
                    style: GoogleFonts.lora(),
                  )),
            ],
          ),
          const Gap(AppSize.pagePadding),
          ElevatedButton(onPressed: (){}, child: const Text("Next"))
        ],
      ),
    );
  }
}
