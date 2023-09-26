import 'package:coffee_shop/coffee/home/workExperience.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class BankDetail extends StatefulWidget {
  int active_index = 6;
  BankDetail({super.key, required this.active_index});

  @override
  State<BankDetail> createState() => _BankDetailState();
}

class _BankDetailState extends State<BankDetail> {
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
              dotCount: 8,
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
              'Bank Details!',
              style: GoogleFonts.lato(
                  fontSize: 25,
                  color: Color.fromARGB(255, 15, 43, 75),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text("Bank Name"),
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
                        return 'Enter your Bank Name';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text("Branch"),
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
                        return 'Enter Branch Name';
                      }
                      return null;
                    },
                  ),
                  Text('Account Name'),
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
                          return 'Enter your Account Number';
                        }
                        return null;
                      },
                    ),
                  ),
                  Text('Acount Number'),
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
                        builder: (context) => WorkExperience(active_index: 7),
                      ));
                },
                child: Center(child: Text('Recheck & Submit')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
