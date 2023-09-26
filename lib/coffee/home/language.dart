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
  int selectedRating = 5;

  // Define a list of languages
  // final List<String> languages = [
  //   'English',

  Map<String, int> languageRatings = {
    'English': 0,
    'Hindi': 0,
    'Nepali': 0,
    'Malay': 0,
    'Arabic': 0,
  };
  Map<String, bool> languageCheckboxes = {
    'English': false,
    'Hindi': false,
    'Nepali': false,
    'Malay': false,
    'Arabic': false,
  };

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
              for (var language in languageRatings.keys)
                LanguageRatingItem(
                  language: language,
                  rating: languageRatings[language]!,
                  isChecked: languageCheckboxes[language]!,
                  onRatingChanged: (rating) {
                    setState(() {
                      languageRatings[language] = rating;
                    });
                  },
                  onCheckboxChanged: (isChecked) {
                    setState(() {
                      languageCheckboxes[language] = isChecked;
                    });
                  },
                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageRatingItem extends StatefulWidget {
  final String language;
  final int rating;
  final bool isChecked;
  final ValueChanged<int> onRatingChanged;
  final ValueChanged<bool> onCheckboxChanged;

  LanguageRatingItem({
    required this.language,
    required this.rating,
    required this.isChecked,
    required this.onRatingChanged,
    required this.onCheckboxChanged,
  });

  @override
  _LanguageRatingItemState createState() => _LanguageRatingItemState();
}

class _LanguageRatingItemState extends State<LanguageRatingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Checkbox(
              fillColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 2, 51, 92),
              ),
              value: widget.isChecked,
              onChanged: (isChecked) {
                widget.onCheckboxChanged(isChecked ?? false);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                widget.language,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            for (int i = 1; i <= 5; i++)
              IconButton(
                splashRadius: 0.0001,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 22, maxWidth: 25),
                onPressed: () {
                  widget.onRatingChanged(i);
                },
                icon: Icon(
                  i <= widget.rating ? Icons.star : Icons.star_border,
                  size: 25,
                  color: Colors.orange,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
