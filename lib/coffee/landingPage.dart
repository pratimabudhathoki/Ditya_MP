import 'package:coffee_shop/coffee/home/photoUpload.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeIntro extends StatefulWidget {
  const CoffeeIntro({super.key});

  @override
  State<CoffeeIntro> createState() => _CoffeeIntroState();
}

class _CoffeeIntroState extends State<CoffeeIntro> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wallpaper.1.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Coffee beans',
                style:
                    GoogleFonts.pacifico(fontSize: 40, color: Colors.white54),
              ),
            ),
            Column(
              children: [
                Text(
                  'Felling low? lets take a sip of Coffee',
                  style: GoogleFonts.allura(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Homepge()));
                        },
                        child: Text(
                          'Start',
                          style: GoogleFonts.arapey(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 155, 85, 5)))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
