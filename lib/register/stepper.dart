import 'package:coffee_shop/register/home/persoanlDetail.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Stepper extends StatefulWidget {
  Stepper(
      {super.key,
      required Null Function() onStepCancel,
      required Null Function() onStepContinue,
      required int currentStep,
      required List<Step> steps});

  @override
  State<Stepper> createState() => _MultiStepperState();
}

class _MultiStepperState extends State<Stepper> {
  List<Step> stepList() => [
        Step(
          state: activeState <= 0 ? StepState.editing : StepState.complete,
          isActive: activeState >= 0,
          title: Text('Personal Detail'),
          content: TextFormField(
            controller: _firstNameController,
            decoration: InputDecoration(
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
          // content: Form(
          //   key: _formKey,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: ListView(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 10),
          //           child: Text(
          //             'Personal Information',
          //             style: GoogleFonts.crimsonText(
          //                 fontSize: 20, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8),
          //           child: Container(
          //             decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 border: Border.all(
          //                     width: 1,
          //                     color: Color.fromARGB(255, 238, 233, 233))),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10, top: 10),
          //                   child: Text("First Name"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(15),
          //                   child: SizedBox(
          //                     height: 46,
          //   child: TextFormField(
          //     controller: _firstNameController,
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //           borderSide:
          //               const BorderSide(color: Colors.grey),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderSide: const BorderSide(
          //             color: Color.fromARGB(255, 7, 7, 7),
          //             width: 1,
          //           ),
          //         )),
          //     validator: (value) {
          //       if (value!.isEmpty) {
          //         return 'Please enter your first name';
          //       }
          //       return null;
          //     },
          //   ),
          // ),

          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text('Middle Name'),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _middleNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 2, 51, 92),
          //                               width: 1,
          //                             ),
          //                           )),
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Last Name"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _lastNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 2, 51, 92),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter your last name';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Permanent Adrdess"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _permanentAddressController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 2, 51, 92),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter your permanent address';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text('Temporary Address'),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _temporaryAddressController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 2, 51, 92),
          //                               width: 1,
          //                             ),
          //                           )),
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Father's Name"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _firstNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 7, 7, 7),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return ' enter your father name';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Mother's Name"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _firstNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 7, 7, 7),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter your mother name';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Spouse's Name"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _firstNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 7, 7, 7),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter your spouse name';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Height"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _firstNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 7, 7, 7),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return 'Please enter your first name';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text("Weight"),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(10),
          //                   child: SizedBox(
          //                     height: 46,
          //                     child: TextFormField(
          //                       controller: _firstNameController,
          //                       decoration: InputDecoration(
          //                           enabledBorder: OutlineInputBorder(
          //                             borderSide:
          //                                 const BorderSide(color: Colors.grey),
          //                             borderRadius: BorderRadius.circular(10),
          //                           ),
          //                           focusedBorder: OutlineInputBorder(
          //                             borderSide: const BorderSide(
          //                               color: Color.fromARGB(255, 7, 7, 7),
          //                               width: 1,
          //                             ),
          //                           )),
          //                       validator: (value) {
          //                         if (value!.isEmpty) {
          //                           return ' enter your weight';
          //                         }
          //                         return null;
          //                       },
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 10,
          //                 ),
          //                 Center(
          //                   child: SizedBox(
          //                     height: 40,
          //                     width: 100,
          //                     child: ElevatedButton(
          //                       onPressed: () {
          //                         if (_formKey.currentState!.validate()) {
          //                           // Perform some action with the form data
          //                           // You can access the values using the controllers:
          //                           final firstName = _firstNameController.text;
          //                           final middleName =
          //                               _middleNameController.text;
          //                           final lastName = _lastNameController.text;
          //                           final permanentAddress =
          //                               _permanentAddressController.text;
          //                           final temporaryAddress =
          //                               _temporaryAddressController.text;

          //                           // Do something with the data, e.g., save it or send it to a server
          //                           // For now, just print it
          //                           print('First Name: $firstName');
          //                           print('Middle Name: $middleName');
          //                           print('Last Name: $lastName');
          //                           print(
          //                               'Permanent Address: $permanentAddress');
          //                           print(
          //                               'Temporary Address: $temporaryAddress');
          //                         }
          //                       },
          //                       child: Center(
          //                         child: Text('Submit'),
          //                       ),
          //                       style: ButtonStyle(
          //                         backgroundColor: MaterialStatePropertyAll(
          //                           Color.fromARGB(255, 2, 51, 92),
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   height: 20,
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
        Step(
          state: activeState <= 1 ? StepState.editing : StepState.complete,
          isActive: activeState >= 1,
          title: Text('Photo Upload'),
          content: Center(),
        ),
        Step(
          state: activeState <= 2 ? StepState.editing : StepState.complete,
          isActive: activeState >= 2,
          title: Text('Passport upload'),
          content: Center(),
        ),
        Step(
          state: activeState <= 3 ? StepState.editing : StepState.complete,
          isActive: activeState >= 3,
          title: Text('Cv/Resume'),
          content: Center(),
        ),
        Step(
          state: activeState <= 4 ? StepState.editing : StepState.complete,
          isActive: activeState >= 4,
          title: Text('Personal Detail'),
          content: Center(),
        ),
        Step(
          state: activeState <= 5 ? StepState.editing : StepState.complete,
          isActive: activeState >= 5,
          title: Text('Language'),
          content: Center(),
        ),
        Step(
          state: activeState <= 6 ? StepState.editing : StepState.complete,
          isActive: activeState >= 6,
          title: Text('Select company category'),
          content: Center(),
        ),
        Step(
          state: activeState <= 7 ? StepState.editing : StepState.complete,
          isActive: activeState >= 7,
          title: Text('Bank Detail'),
          content: Center(),
        ),
        Step(
          state: activeState <= 8 ? StepState.editing : StepState.complete,
          isActive: activeState >= 8,
          title: Text('Work Experience'),
          content: Center(),
        ),
      ];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _permanentAddressController =
      TextEditingController();
  final TextEditingController _temporaryAddressController =
      TextEditingController();
  int activeState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
          // type: StepperType.horizontal,
          onStepCancel: () {
            if (activeState == 0) {
              return;
            }
            activeState--;
            setState(() {});
          },
          onStepContinue: () {
            if (activeState < (stepList().length)) {
            } else if (activeState == stepList().length) {
              return;
            }
            activeState++;
            setState(() {});
          },
          currentStep: activeState,
          steps: stepList()),
    );
  }
}
