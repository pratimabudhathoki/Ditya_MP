import 'package:coffee_shop/coffee/home/CompanySelect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class languageSelect extends StatefulWidget {
  int active_index = 4;
  languageSelect({super.key, required this.active_index});

  @override
  State<languageSelect> createState() => _languageSelectState();
}

class _languageSelectState extends State<languageSelect> {
  String selectedLanguage = 'English';
  int selectedRating = 5;

  // Define a list of languages
  final List<String> languages = [
    'English',
    'Hindi',
    'Nepali',
    'Malay',
    'Arabic',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
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
              'Select Company Category!',
              style: GoogleFonts.acme(
                  fontSize: 24, color: Color.fromARGB(255, 15, 43, 75)),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: DropdownButton<String>(
                focusColor: Color.fromARGB(255, 2, 51, 92),
                value: selectedLanguage,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLanguage = newValue!;
                  });
                },
                items: languages.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Text('Rate $selectedLanguage:'),
            Slider(
              value: selectedRating.toDouble(),
              onChanged: (double newValue) {
                setState(() {
                  selectedRating = newValue.round();
                });
              },
              min: 1,
              max: 5,
              divisions: 4,
              label: selectedRating.toString(),
            ),
            Text('Rating: $selectedRating'),
            Padding(
              padding: const EdgeInsets.all(20),
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
                              CompanySelect(active_index: 5)));
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
