import 'package:coffee_shop/register/home/language.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';

class CvUpload extends StatefulWidget {
  int active_index = 3;
  CvUpload({super.key, required this.active_index});

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            DotStepper(
              lineConnectorsEnabled: false,
              dotCount: 9,
              activeStep: widget.active_index,
              dotRadius: 20.0,
              shape: Shape.pipe,
              spacing: 10.0,
            ),
            Container(
                alignment: Alignment.topLeft,
                height: 80,
                width: 140,
                child: Image.asset('assets/images/ditya.jpg')),
            Text(
              "Cv/Resume Upload",
              style: GoogleFonts.acme(
                  fontSize: 25, color: Color.fromARGB(255, 15, 43, 75)),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [10, 10],
                color: Colors.grey,
                strokeWidth: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 315,
                  width: 300,
                  child: Image.asset(
                    "assets/images/defaultImage.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 51, 92),
                            border: Border.all(style: BorderStyle.solid)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Choose File",
                            style: GoogleFonts.lora(
                              color: Colors.white,
                            ),
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
                            "Upload your Cv/Resume",
                            style: GoogleFonts.lora(),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 97,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 2, 51, 92),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    widget.active_index++;
                  });

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              languageSelect(active_index: 4)));
                },
                child: Center(child: Text('Next')),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
