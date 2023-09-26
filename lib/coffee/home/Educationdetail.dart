import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';

class EducationDetail extends StatefulWidget {
  int active_index = 8;
  EducationDetail({super.key, required this.active_index});

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  XFile? image;

  final ImagePicker picker = ImagePicker();
  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }

// drop down of level
  String delault = "";
  var dropDownLevel = [
    {"title": "Under SlC", "value": "1"},
    {"title": "Secondary", "value": "2"},
    {"title": "Higher Secondary", "value": "3"},
    {"title": "PHD", "value": "4"},
    {"title": "", "value": "5"},
  ];
  var Items = ['Select Option', 'GPA', 'Percentage'];
  //drop down for gpa and percentage
  String selectedOption = 'Select an Option';
  TextEditingController gpaController = TextEditingController();
  TextEditingController percentageController = TextEditingController();
  TextEditingController schoolCollegeName = TextEditingController();

  // drop down of sector
  String selectedSector = 'Select Sector'; // Default value
  //drop down of year
  String showYear = ' Select Year';
  DateTime Selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Education Document",
              style: GoogleFonts.lato(
                  fontSize: 25,
                  color: Color.fromARGB(255, 15, 43, 75),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.all(10), //padding of outer Container
                child: DottedBorder(
                  color: Color.fromARGB(
                      255, 83, 83, 83), //color of dotted/dash line
                  strokeWidth: 1, //thickness of dash/dots
                  dashPattern: [5, 6],
                  //dash patterns, 10 is dash width, 6 is space width
                  child: Container(
                      //inner container
                      height: 100, //height of inner container
                      width: double
                          .infinity, //width to 100% match to parent container.
                      color: Color.fromARGB(213, 253, 253,
                          252) //background color of inner container
                      ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 17, bottom: 5),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 51, 92),
                            border: Border.all(style: BorderStyle.solid)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Choose File",
                            style: GoogleFonts.lora(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.solid)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Upload your Highest Degree",
                            style: GoogleFonts.lora(),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Press on choose file to upload a documents",
                style: GoogleFonts.roboto(color: Colors.black26, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isDense: true,
                value: delault,
                // isExpanded: true,
                menuMaxHeight: 300,
                items: [
                  const DropdownMenuItem<String>(
                    child: Text('Select your level'),
                    value: "",
                  ),
                  ...dropDownLevel.map<DropdownMenuItem<String>>((data) {
                    return DropdownMenuItem(
                      child: Text(data["title"]!),
                      value: data["value"],
                    );
                  }).toList(),
                ],
                onChanged: (Newvalue) {
                  print(Newvalue);
                  setState(() {
                    delault = Newvalue!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter School/College Name',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(showYear),
                  ),
                  GestureDetector(
                    onTap: () {
                      SelectYear(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.calendar_month),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        menuMaxHeight: 300,
                        value: 'Select Type',
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue!;
                            // Clear text fields when switching between GPA and Percentage
                            gpaController.clear();
                            percentageController.clear();
                          });
                        },
                        items:
                            ['Select Type', 'GPA', 'Percentage'].map((option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                if (selectedOption == 'GPA')
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      controller: gpaController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Enter GPA',
                      ),
                    ),
                  ),
                if (selectedOption == 'Percentage')
                  Container(
                    width: 150,
                    child: TextField(
                      controller: percentageController,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(labelText: 'Enter Percentage'),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    menuMaxHeight: 200,
                    value: selectedSector,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSector = newValue!;
                        // Clear text fields when switching
                        gpaController.clear();
                        percentageController.clear();
                      });
                    },
                    items: [
                      'Select Sector',
                      'Business',
                      'IT',
                      'Marketing',
                      'HM',
                      'Science'
                    ].map((sector) {
                      return DropdownMenuItem<String>(
                        value: sector,
                        child: Text(sector),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                    if (delault == "") {}
                  },
                  child: Center(child: Text('Submit'))),
            )
          ]),
        ),
      ),
    );
  }

  SelectYear(context) async {
    print("call date picker");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Year'),
          content: SizedBox(
            height: 250,
            width: 250,
            child: YearPicker(
                firstDate: DateTime(DateTime.now().year - 40, 1),
                initialDate: DateTime.now(),
                lastDate: DateTime(2025),
                selectedDate: Selectdate,
                onChanged: (DateTime dateTime) {
                  setState(() {
                    Selectdate = dateTime;
                    showYear = "${dateTime.year}";
                  });
                  Navigator.pop(context);
                }),
          ),
        );
      },
    );
  }
}
