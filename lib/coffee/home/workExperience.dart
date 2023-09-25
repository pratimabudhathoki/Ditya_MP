import 'package:coffee_shop/coffee/home/Educationdetail.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:csc_picker/csc_picker.dart';

class WorkExperience extends StatefulWidget {
  int active_index = 7;
  WorkExperience({super.key, required this.active_index});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
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
            Text(
              "Work Experience",
              style: GoogleFonts.acme(
                  fontSize: 25, color: Color.fromARGB(255, 15, 43, 75)),
            ),
            SizedBox(
              height: 30,
            ),
            CSCPicker(
              searchBarRadius: 30,
              dropdownDialogRadius: 30,
              onCityChanged: (city) {},
              onStateChanged: (state) {},
              onCountryChanged: (country) {},
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text("Company Name"),
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
                  return 'Enter Name of Company';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text("Position"),
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
                  return 'Enter your Position';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text("Work Description"),
            ),
            TextFormField(
              maxLines: 6,
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
                  return 'Enter your Work Description ';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
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
                          builder: (context) =>
                              EducationDetail(active_index: 8)));
                },
                child: Center(child: Text('Next')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
