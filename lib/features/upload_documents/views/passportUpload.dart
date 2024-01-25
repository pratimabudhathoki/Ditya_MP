
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/constants/constants.dart';

class PassportUpload extends StatefulWidget {
  
  const PassportUpload({super.key});

  @override
  State<PassportUpload> createState() => _PassportUploadState();
}

class _PassportUploadState extends State<PassportUpload> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }

  //Drop down of Expiry calander
  DateTime SelectedDate = DateTime.now();
  DateTime SelectedExpiryDate = DateTime.now();
  //drop down of DOB calander
  DateTime DOBselectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
           FormHeadline(title: "Password Upload"),
              const Gap(SizeManager.pagePadding),
            DottedBorder(
              borderType: BorderType.RRect,
              dashPattern: const [5, 5],
              color: Colors.grey,
              strokeWidth: 2,
              child: Image.asset(
                "assets/images/defaultImage.jpg",
                height: 200.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            "Upload your password",
                            style: GoogleFonts.lora(),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            PrimaryTextField(controller: TextEditingController(), label: "Password Number"),
            const Gap(12.0),
             PrimaryTextField(controller:TextEditingController(), label: "Issue date"),
             const Gap(12.0),
            //  ElevatedButton(onPressed: (){}, child: const Text("Next"))
          ],
        ),
      );
    
  }
}
