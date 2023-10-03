import 'package:coffee_shop/coffee/home/bank/bankDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';

class CompanySelect extends StatefulWidget {
  int active_index = 5;
  CompanySelect({super.key, required this.active_index});

  @override
  State<CompanySelect> createState() => _CompanySelectState();
}

class _CompanySelectState extends State<CompanySelect> {
  var dropDownListData = [
    {"title": "Information Technology(IT)", "value": "1"},
    {"title": "Engineering", "value": "2"},
    {"title": "Production", "value": "3"},
    {"title": "Manufacturing", "value": "4"},
    {"title": "Labor", "value": "5"},
  ];
  String delaultValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DotStepper(
              tappingEnabled: false,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Select Company Category!',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Color.fromARGB(255, 15, 43, 75),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'What category of companies are you looking for?',
                style: GoogleFonts.mukta(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 32, 29, 29)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InputDecorator(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isDense: true,
                  value: delaultValue,
                  // isExpanded: true,
                  menuMaxHeight: 300,
                  items: [
                    const DropdownMenuItem<String>(
                      child: Text('Select Company Category'),
                      value: "",
                    ),
                    ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                      return DropdownMenuItem(
                        child: Text(data["title"]!),
                        value: data["value"],
                      );
                    }).toList(),
                  ],
                  onChanged: (Newvalue) {
                    print(Newvalue);
                    setState(() {
                      delaultValue = Newvalue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                    if (delaultValue == "") {
                      print("select corse");
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BankDetail(active_index: 6),
                          ));
                    }
                  },
                  child: Center(child: Text('Submit'))),
            )
          ],
        ),
      ),
    );
  }
}
