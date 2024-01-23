import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/register/home/passportUpload.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoUpload extends StatefulWidget {
  PhotoUpload({
    super.key,
  });

  @override
  State<PhotoUpload> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PhotoUpload> {
  final TextEditingController _firstNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  XFile? image;

  final ImagePicker picker = ImagePicker();
  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FormHeadline(title: "Photo Upload"),
          const Gap(SizeManager.pagePadding),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [5, 5],
            color: Colors.grey,
            strokeWidth: 2,
            child: Image.asset(
              "assets/images/defaultImage.jpg",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          const Gap(SizeManager.pagePadding),
          // Row(
          //  children: [
          //     InkWell(
          //       onTap: () {
          //         getImage();
          //       },
          //       child: Container(
          //         decoration: BoxDecoration(
          //             color: Color.fromARGB(255, 2, 51, 92),
          //             border: Border.all(style: BorderStyle.solid)),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(
          //             "Choose File",
          //             style: GoogleFonts.lora(color: Colors.white),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Container(
          //         decoration: BoxDecoration(
          //             border: Border.all(style: BorderStyle.solid)),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text(
          //             "Upload pp Size Photo",
          //             style: GoogleFonts.lora(),
          //           ),
          //         )),
          //   ],
          // ),
          // SizedBox(height: 40),
          // DottedBorder(
          //   borderType: BorderType.RRect,
          //   dashPattern: [10, 10],
          //   color: Colors.grey,
          //   strokeWidth: 2,
          //   child: Container(
          //     height: 200,
          //     width: 200,
          //     child: Image.asset("assets/images/defaultImage.jpg"),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),

          Row(
            children: [
              InkWell(
                onTap: () {
                  getImage();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 51, 92),
                      border: Border.all(style: BorderStyle.solid)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Choose File",
                      style: GoogleFonts.lora(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Upload full Size Photo",
                      style: GoogleFonts.lora(),
                    ),
                  )),
            ],
          ),
          const Gap(SizeManager.pagePadding),
          // ElevatedButton(onPressed: () {}, child: const Text("Next"))
        ],
      ),
    );
  }
}
