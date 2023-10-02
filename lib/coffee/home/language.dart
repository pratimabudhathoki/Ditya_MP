import 'package:coffee_shop/coffee/home/CompanySelect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class languageSelect extends StatefulWidget {
  int active_index = 4;
  languageSelect({super.key, required this.active_index});

  @override
  State<languageSelect> createState() => _languageSelectState();
}

class _languageSelectState extends State<languageSelect> {
  // Define a list of languages
  // final List<String> languages = [
  //   'English',

  List<Map> categories = [
    {"language": "English", "isChecked": false},
    {"language": "Hindi", "isChecked": false},
    {"language": "Nepali", "isChecked": false},
    {"language": "Malay", "isChecked": false},
    {"language": "Arabic", "isChecked": false},
  ];
  double rating = 3.0; // Initial rating value, can be between 1 and 5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  width: 140,
                  child: Image.asset('assets/images/ditya.jpg')),
              SizedBox(
                height: 15,
              ),
              Text(
                'Select Language!',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Color.fromARGB(255, 15, 43, 75),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Rate Your Language Skills',
                  style: GoogleFonts.lato(fontSize: 18)),
              SizedBox(height: 20),
              Column(
                  children: categories.map((favorite) {
                return CheckboxListTile(
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  activeColor: Color.fromARGB(255, 2, 51, 92),
                  title: Text(favorite['language']),
                  value: favorite['isChecked'],
                  onChanged: (value) {
                    setState(() {
                      favorite['isChecked'] = value;
                    });
                  },
                );
              }).toList()),
              Wrap
              (
                  children: categories.map((favorite) {
                if (favorite['isChecked'] == true) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Color.fromARGB(255, 227, 236, 240),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Text(
                                    favorite['language'],
                                    style: GoogleFonts.lato(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 15, 43, 75),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        favorite['isChecked'] =
                                            !favorite['isChecked'];
                                      });
                                    },
                                    child: Icon(Icons.delete_rounded,
                                        color:
                                            Color.fromARGB(255, 187, 66, 57)),
                                  ),
                                )
                              ]),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Text(
                                  'Reading',
                                  style: GoogleFonts.kanit(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Text(
                                  'Writing',
                                  style: GoogleFonts.kanit(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 8),
                            child: Text(
                              'Speaking',
                              style: GoogleFonts.kanit(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              }).toList()),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanySelect(active_index: 5),
                        ));
                  },
                  child: Center(child: Text("Next")),
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
