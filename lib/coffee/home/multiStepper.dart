import 'package:coffee_shop/coffee/home/CompanySelect.dart';
import 'package:coffee_shop/coffee/home/Educationdetail.dart';
import 'package:coffee_shop/coffee/home/bank/bankDetail.dart';
import 'package:coffee_shop/coffee/home/cv/radiobutton.dart';
import 'package:coffee_shop/coffee/home/cv/resume.dart';
import 'package:coffee_shop/coffee/home/language.dart';
import 'package:coffee_shop/coffee/home/passportUpload.dart';
import 'package:coffee_shop/coffee/home/photoUpload.dart';
import 'package:coffee_shop/coffee/home/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class MUltiStepperpage extends StatefulWidget {
  const MUltiStepperpage({super.key});

  @override
  State<MUltiStepperpage> createState() => _MultiStepperState();
}

class _MultiStepperState extends State<MUltiStepperpage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Define controllers for the TextFormFields
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _permanentAddressController =
      TextEditingController();
  final TextEditingController _temporaryAddressController =
      TextEditingController();

  final TextEditingController _fatherName = TextEditingController();
  final TextEditingController _motherName = TextEditingController();
  final TextEditingController _MaritalStatus = TextEditingController();
  final TextEditingController _height = TextEditingController();
  final TextEditingController _Weight = TextEditingController();
  final TextEditingController _Spouse = TextEditingController();

  int active_index = 0;
  int total_index = 8;

//marinal status
  String selectedValue = 'Marital Status'; // Initial value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: bodyBuilder(),
    );
  }

  bodyBuilder() {
    switch (active_index) {
      case 0:
        return basicDetail();
      case 1:
        return SecondStep();
      case 2:
        return thirdStep();
      case 3:
        return ForthStep();
      case 4:
        return FifthStep();
      case 5:
        return SixthStep();
      case 6:
        return SeventhStep();
      case 7:
        return EigthStep();
      case 8:
        return NinthStep();
      default:
        return basicDetail();
    }
  }

  Widget basicDetail() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            DotStepper(
              dotCount: 9,
              activeStep: active_index,
              dotRadius: 20.0,
              shape: Shape.pipe,
              spacing: 5,
            ),
            // Text('Steps ${active_index + 1} to $total_index'),
            Text(
              'Personal Information',
              style: GoogleFonts.crimsonText(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6, left: 10, top: 6),
              child: Text(
                "Name",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 51, 92),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _firstNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'FirstName',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your first name';
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
                    padding: const EdgeInsets.only(right: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _middleNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Middle Name',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            RadioBUtton(),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 10),
              child: Text(
                "Address",
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
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _permanentAddressController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Permanent Address',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your permanent address';
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
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _temporaryAddressController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Temporary Address',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter your temporary address';
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
              padding: const EdgeInsets.only(bottom: 5, left: 10, top: 10),
              child: Text(
                'Family detail',
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
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _fatherName,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'FatherName',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter your father name';
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
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          controller: _motherName,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Mother Name',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter your mother name';
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

            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: _Spouse,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Spouses Name',
                        hintStyle: TextStyle(fontSize: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter your spouses name';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10) // Add a border
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: <String>['Marital Status', 'Married', 'Single']
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
                // Flexible(
                //   child: Padding(
                //     padding:
                //         const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                //     child: Container(
                //       height: 45,
                //       decoration: BoxDecoration(
                //           border: Border.all(),
                //           borderRadius: BorderRadius.circular(10)),
                //       child: Padding(
                //         padding: const EdgeInsets.only(left: 10),
                //         child: TextFormField(
                //           controller: _MaritalStatus,
                //           decoration: InputDecoration(
                //             border: InputBorder.none,
                //             hintText: 'Martinal Status',
                //             hintStyle: TextStyle(fontSize: 15),
                //           ),
                //           validator: (value) {
                //             if (value!.isEmpty) {
                //               return 'enter your martinal status';
                //             }
                //             return null;
                //           },
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 10, top: 10, bottom: 10, left: 20),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _height,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Height',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter your height';
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
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _Weight,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                        hintStyle: TextStyle(fontSize: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter your weight';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    active_index++;
                  });
                  // if (_formKey.currentState?.validate() ?? false) {

                  // }
                },
                child: Text("Next"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 2, 51, 92),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget SecondStep() {
    return PhotoUpload(
      active_index: 1,
      total_index: total_index,
    );
  }

  Widget thirdStep() {
    return PassportUpload(
      active_index: 2,
    );
  }

  Widget ForthStep() {
    return CvUpload(active_index: 3);
  }

  Widget FifthStep() {
    return languageSelect(
      active_index: 4,
    );
  }

  Widget SixthStep() {
    return CompanySelect(
      active_index: 5,
    );
  }

  Widget SeventhStep() {
    return BankDetail(
      active_index: 6,
    );
  }

  Widget EigthStep() {
    return WorkExperience(active_index: 7);
  }

  Widget NinthStep() {
    return EducationDetail(active_index: 8);
  }
}
