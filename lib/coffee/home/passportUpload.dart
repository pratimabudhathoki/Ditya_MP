import 'package:coffee_shop/coffee/home/cv/resume.dart';
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

  //drop down of calander
  DateTime SelectedDate = DateTime.now();
  DateTime SelectedExpiryDate = DateTime.now();

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
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Color.fromARGB(255, 15, 43, 75),
                      fontWeight: FontWeight.bold),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, left: 10),
                    child: Text(
                      "Password Number",
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 51, 92),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Passport Number',
                                  hintStyle: TextStyle(fontSize: 15),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Password Number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: ' DOB',
                                  hintStyle: TextStyle(fontSize: 15),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter Date of bitrh';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, left: 10, top: 5),
                    child: Text(
                      "Issued Date",
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 51, 92),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.none,
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () async {
                                        DateTime? datepicked =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: SelectedDate,
                                          firstDate: DateTime(1890),
                                          lastDate: DateTime(2025),
                                          builder: (context, child) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 490,
                                                  width: 550,
                                                  child: child!,
                                                )
                                              ],
                                            );
                                            // return Theme(
                                            //     data: Theme.of(context)
                                            //         .copyWith(
                                            //             colorScheme:
                                            //                 ColorScheme.light(
                                            //       primary: Color.fromARGB(
                                            //           255, 2, 51, 92),
                                            //       onPrimary: Colors.white,
                                            //       onSurface: Colors.black,
                                            //     )),
                                            //     child: child!);
                                          },
                                        );
                                        if (datepicked != null) {
                                          setState(() {
                                            SelectedDate = datepicked;
                                          });
                                        }
                                      },
                                      child: Icon(Icons.arrow_drop_down)),
                                  border: InputBorder.none,
                                  hintText:
                                      '${SelectedDate.year}-${SelectedDate.month}-${SelectedDate.day}',
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return ' enter Issued Date';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, left: 10, top: 5),
                    child: Text(
                      "Expiry Date",
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 51, 92),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.none,
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () async {
                                        DateTime? expirydatepicked =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: SelectedExpiryDate,
                                          firstDate: DateTime(1890),
                                          lastDate: DateTime(2025),
                                          builder: (context, child) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 490,
                                                  width: 550,
                                                  child: child!,
                                                )
                                              ],
                                            );
                                            // return Theme(
                                            //     data: Theme.of(context)
                                            //         .copyWith(
                                            //             colorScheme:
                                            //                 ColorScheme.light(
                                            //       primary: Color.fromARGB(
                                            //           255, 2, 51, 92),
                                            //       onPrimary: Colors.white,
                                            //       onSurface: Colors.black,
                                            //     )),
                                            //     child: child!);
                                          },
                                        );
                                        if (expirydatepicked != null) {
                                          setState(() {
                                            SelectedExpiryDate =
                                                expirydatepicked;
                                          });
                                        }
                                      },
                                      child: Icon(Icons.arrow_drop_down)),
                                  border: InputBorder.none,
                                  hintText:
                                      '${SelectedExpiryDate.year}-${SelectedExpiryDate.month}-${SelectedExpiryDate.day}',
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return ' enter expiry Date';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
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
