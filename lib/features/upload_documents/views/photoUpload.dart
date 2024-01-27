import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/size_manager.dart';
import 'package:coffee_shop/core/shared_components/choose_file_button.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/features/upload_documents/views/passportUpload.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FormHeadline(title: "Photo Upload"),
          const Gap(SizeManager.pagePadding),
          const Text(
            "Please upload passpost size(2 inch x 2 inch or 51 mm x 51 mm) photo",
            textAlign: TextAlign.start,
          ),
          const Gap(SizeManager.pagePadding),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const [5, 5],
            color: Colors.grey,
            strokeWidth: 2,
            child: const SizedBox(
              height: 120,
              width: 120,
              child: Icon(Icons.photo),
            ),
          ),
          const Gap(SizeManager.pagePadding),

          ChooseFileButton(onTap: (v) {}),
          Gap(24.0),

          Text(
            "Please upload full size photo where your entire body is visible.",
            textAlign: TextAlign.start,
          ),
          Gap(16.0),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: [10, 10],
            color: Colors.grey,
            strokeWidth: 2,
            child: const SizedBox(
              height: 120,
              width: 120,
              // child: Image.asset("assets/images/defaultImage.jpg"),
              child: Icon(Icons.photo),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ChooseFileButton(onTap: (v) {}),

          const Gap(SizeManager.pagePadding),
          // ElevatedButton(onPressed: () {}, child: const Text("Next"))
        ],
      ),
    );
  }
}
