import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/shared_components/shared_components.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FormHeadline(title: "Passport Upload"),
          const Gap(SizeManager.pagePadding),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [5, 5],
            color: Colors.grey,
            strokeWidth: 2,
            child: Container(
              height: 120.0,
              width: 120.0,
              child: const Icon(Icons.photo),
            ),
          ),
          const Gap(16.0),
          ChooseFileButton(
            onTap: (file) {},
          ),
          PrimaryTextField(
              controller: TextEditingController(), label: "Passport Number"),
          const Gap(12.0),
          PrimaryTextField(
              controller: TextEditingController(), label: "Issue date"),
          const Gap(12.0),
          //  ElevatedButton(onPressed: (){}, child: const Text("Next"))
        ],
      ),
    );
  }
}
