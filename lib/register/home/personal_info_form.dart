import 'package:coffee_shop/core/widgets/form_headline.dart';
import 'package:coffee_shop/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/constants.dart';

class PersonalInfoForm extends StatefulWidget {
  const PersonalInfoForm({super.key});

  @override
  State<PersonalInfoForm> createState() => _PersonalInfoFormState();
}

class _PersonalInfoFormState extends State<PersonalInfoForm> {
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FormHeadline(title: 'Personal Information'),
          const Gap(16.0),
          PrimaryTextField(controller: _lastNameController, label: "Full name"),
          const Gap(12.0),
          PrimaryTextField(
              controller: _lastNameController, label: "Permanant address"),
          const Gap(12.0),
          PrimaryTextField(
              controller: _lastNameController, label: "Temporary address"),
          const Gap(12.0),
          PrimaryTextField(
              controller: _lastNameController, label: "Father's name"),
          const Gap(12.0),
          PrimaryTextField(
              controller: _lastNameController, label: "Date of birth"),
          const Gap(16.0),
          ElevatedButton(onPressed: () {}, child: const Text("Next"))
          // PrimaryTextField(controller: _lastNameController, label: "Full name"),
          // PrimaryTextField(controller: _lastNameController, label: "Full name"),

          // const Text('Middle Name'),
          // TextFormField(
          //   controller: _middleNameController,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Please enter your first name';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('last Name'),
          // TextFormField(
          //   controller: _lastNameController,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter your last name';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Permanet address'),
          // TextFormField(
          //   controller: _permanentAddressController,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter your parmanent address';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Temporary Name'),
          // TextFormField(
          //   controller: _temporaryAddressController,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter temporary address';
          //     }
          //     return null;
          //   },
          // ),
          // const Text(' fathers Name'),
          // TextFormField(
          //   controller: _fatherName,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter father name';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Spouses Name'),
          // TextFormField(
          //   controller: _motherName,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter spouse name';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Marital Status'),
          // TextFormField(
          //   controller: _MaritalStatus,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Please enter your first name';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Height'),
          // TextFormField(
          //   controller: _height,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter Height';
          //     }
          //     return null;
          //   },
          // ),
          // const Text('Weight'),
          // TextFormField(
          //   controller: _Weight,
          //   decoration: InputDecoration(
          //       contentPadding: const EdgeInsets.symmetric(vertical: 10),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: const BorderSide(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       focusedBorder: const OutlineInputBorder(
          //         borderSide: BorderSide(
          //           color: Color.fromARGB(255, 7, 7, 7),
          //           width: 1,
          //         ),
          //       )),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Enter Weight';
          //     }
          //     return null;
          //   },
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: const ButtonStyle(
          //       backgroundColor: MaterialStatePropertyAll(
          //         Color.fromARGB(255, 2, 51, 92),
          //       ),
          //     ),
          //     child: const Text("Next"),
          //   ),
          // )
        ],
      ),
    );
  }
}
