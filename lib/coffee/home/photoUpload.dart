import 'package:coffee_shop/coffee/home/passportUpload.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoUpload extends StatefulWidget {
  int total_index;
  int active_index = 1;

  PhotoUpload({
    super.key,
    required this.active_index,
    required this.total_index,
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DotStepper(
                tappingEnabled: false,
                dotCount: 9,
                activeStep: widget.active_index,
                dotRadius: 20.0,
                shape: Shape.pipe,
                spacing: 10.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  height: 80,
                  width: 100,
                  child: Image.asset('assets/images/ditya.jpg')),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Photo Upload",
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Color.fromARGB(255, 15, 43, 75),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    dashPattern: [10, 10],
                    color: Colors.grey,
                    strokeWidth: 2,
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/images/defaultImage.jpg"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
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
                            "Upload pp Size Photo",
                            style: GoogleFonts.lora(),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    dashPattern: [10, 10],
                    color: Colors.grey,
                    strokeWidth: 2,
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/images/defaultImage.jpg"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
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
                            "Upload full Size Photo",
                            style: GoogleFonts.lora(),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.active_index++;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PassportUpload(active_index: 2),
                        ));
                  },
                  child: Center(
                    child: Text(
                      'Next',
                      // style: GoogleFonts.arapey(
                      //     fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 2, 51, 92),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
