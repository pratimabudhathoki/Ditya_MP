import 'package:coffee_shop/core/constants/constants.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/features/upload_documents/views/CompanySelect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:im_stepper/stepper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LanguageSelect extends StatefulWidget {
  LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  // Define a list of languages
  // final List<String> languages = [
  //   'English',

  List<Map> categories = [
    {"language": "English", "isChecked": false},
    {"language": "Hindi", "isChecked": false},
    {"language": "Nepali", "isChecked": false},
    {"language": "Portugese", "isChecked": false},
    {"language": "Korean", "isChecked": false},
    {"language": "Japanease", "isChecked": false},
    {"language": "Germany", "isChecked": false},
    {"language": "Malay", "isChecked": false},
    {"language": "Arabic", "isChecked": false},
    {"language": "Other(Please specify)", "isChecked": false},
  ];
  double rating = 3.0; // Initial rating value, can be between 1 and 5
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(child: FormHeadline(title: "Language Known")),
          const Gap(SizeManager.pagePadding),
          const Text(
            'Choose your known language from the options below:',
          ),

          ...categories.map((favorite) {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: 50,
              child: CheckboxListTile(
                activeColor: const Color.fromARGB(255, 2, 51, 92),
                controlAffinity: ListTileControlAffinity.platform,
                title: Text(favorite['language']),
                contentPadding: EdgeInsets.zero,
                value: favorite['isChecked'],
                onChanged: (value) {
                  setState(() {
                    favorite['isChecked'] = value;
                  });
                },
              ),
            );
          }).toList(),
          const Gap(SizeManager.pagePadding),
          categories.last["isChecked"]
              ? PrimaryTextField(
                  controller: TextEditingController(),
                  label: "Please specify the other languages your've known.")
              : const SizedBox.shrink(),
          // Wrap(
          //     children: categories.map((favorite) {
          //   if (favorite['isChecked'] == true) {
          //     return Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Card(
          //         color: const Color.fromARGB(255, 227, 236, 240),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.all(9.0),
          //                     child: Text(
          //                       favorite['language'],
          //                       style: GoogleFonts.lato(
          //                           fontSize: 17,
          //                           color:
          //                               const Color.fromARGB(255, 15, 43, 75),
          //                           fontWeight: FontWeight.bold),
          //                     ),
          //                   ),
          //                   Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: InkWell(
          //                       onTap: () {
          //                         setState(() {
          //                           favorite['isChecked'] =
          //                               !favorite['isChecked'];
          //                         });
          //                       },
          //                       child: const Icon(Icons.delete_rounded,
          //                           color: Color.fromARGB(255, 187, 66, 57)),
          //                     ),
          //                   )
          //                 ]),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 5),
          //               child: Row(
          //                 children: [
          //                   Text(
          //                     'Reading',
          //                     style: GoogleFonts.kanit(
          //                       fontSize: 15,
          //                       color: Colors.black,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 5),
          //               child: Row(
          //                 children: [
          //                   Text(
          //                     'Writing',
          //                     style: GoogleFonts.kanit(
          //                       fontSize: 15,
          //                       color: Colors.black,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 5, bottom: 8),
          //               child: Text(
          //                 'Speaking',
          //                 style: GoogleFonts.kanit(
          //                   fontSize: 15,
          //                   color: Colors.black,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   } else {
          //     return Container();
          //   }
          // }).toList()),
          const Gap(SizeManager.pagePadding),
        ],
      ),
    );
  }
}
