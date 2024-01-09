import 'package:coffee_shop/register/home/cv/resume.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';

class PassportUpload extends StatefulWidget {
  int active_index = 2;
  PassportUpload({super.key, required this.active_index});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  width: 100,
                  child: Image.asset('assets/images/ditya.jpg')),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Password Upload With Detail",
                  style: GoogleFonts.acme(
                      fontSize: 20, color: Color.fromARGB(255, 15, 43, 75)),
                ),
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
                              "Upload your scanned password",
                              style: GoogleFonts.lora(),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Text("Password Number"),
                    ),
                    TextFormField(
                      // controller: _firstNameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 7, 7, 7),
                              width: 1,
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your password Number';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Text("DOB"),
                    ),
                    TextFormField(
                      // controller: _firstNameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 7, 7, 7),
                              width: 1,
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Date of birth(AD)';
                        }
                        return null;
                      },
                    ),
                    Text('Issued Date'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: TextFormField(
                        // controller: _firstNameController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 7, 7, 7),
                                width: 1,
                              ),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Issue Date';
                          }
                          return null;
                        },
                      ),
                    ),
                    Text('Expiry Date'),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 7, 7, 7),
                                width: 1,
                              ),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your expiry date';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
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
                          builder: (context) => CvUpload(active_index: 3),
                        ));
                  },
                  child: Center(child: Text('Next')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
