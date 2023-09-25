import 'package:coffee_shop/coffee/home/CompanySelect.dart';
import 'package:coffee_shop/coffee/home/Educationdetail.dart';
import 'package:coffee_shop/coffee/home/bank/bankDetail.dart';
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
  int active_index = 0;
  int total_index = 8;

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
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            DotStepper(
              dotCount: 9,
              activeStep: active_index,
              dotRadius: 20.0,
              shape: Shape.pipe,
              spacing: 5,
            ),
            Text('Steps ${active_index + 1} to $total_index'),
            Text(
              'Personal Information',
              style: GoogleFonts.crimsonText(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("Name"),
            TextFormField(
              controller: _firstNameController,
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
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            Text('Middle Name'),
            TextFormField(
              controller: _middleNameController,
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
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            Text('last Name'),
            TextFormField(
              controller: _lastNameController,
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
                  return 'Enter your last name';
                }
                return null;
              },
            ),
            Text('Permanet address'),
            TextFormField(
              controller: _permanentAddressController,
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
                  return 'Enter your parmanent address';
                }
                return null;
              },
            ),
            Text('Temporary Name'),
            TextFormField(
              controller: _temporaryAddressController,
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
                  return 'Enter temporary address';
                }
                return null;
              },
            ),
            Text(' fathers Name'),
            TextFormField(
              controller: _fatherName,
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
                  return 'Enter father name';
                }
                return null;
              },
            ),
            Text('Spouses Name'),
            TextFormField(
              controller: _motherName,
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
                  return 'Enter spouse name';
                }
                return null;
              },
            ),
            Text('Marital Status'),
            TextFormField(
              controller: _MaritalStatus,
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
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            Text('Height'),
            TextFormField(
              controller: _height,
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
                  return 'Enter Height';
                }
                return null;
              },
            ),
            Text('Weight'),
            TextFormField(
              controller: _Weight,
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
                  return 'Enter Weight';
                }
                return null;
              },
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
