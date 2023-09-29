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
              style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Color.fromARGB(255, 15, 43, 75),
                  fontWeight: FontWeight.bold),
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
              padding: const EdgeInsets.only(bottom: 5, left: 10, top: 10),
              child: Text(
                "Company Name",
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
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
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
                            hintText: 'Company Name',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Company Name';
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
                "Position",
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
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
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
                            hintText: 'Position',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Positon';
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
                "Work Description",
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
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Work Description',
                            hintStyle: TextStyle(fontSize: 15),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Description';
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
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
