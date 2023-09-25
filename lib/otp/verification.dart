import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class otpVerification extends StatefulWidget {
  const otpVerification({super.key});

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3.8,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 2, 51, 92),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(200, 100),
                            bottomLeft: Radius.elliptical(200, 100))),
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height / 4,
                  //   width: MediaQuery.of(context).size.width / 2,
                  //   decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 27, 92, 145),
                  //       borderRadius: BorderRadius.only(
                  //           bottomLeft: Radius.elliptical(350, 600))),
                  // )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Verification Code",
                    style: GoogleFonts.cabin(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "We have send the verifiaction code.",
                  style: GoogleFonts.tinos(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Enter the 4 digit verification code received.',
                      style: GoogleFonts.lora(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputBox(context, text1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputBox(context, text2),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputBox(context, text3),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputBox(context, text4),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const otpVerification(),
                            ));
                      },
                      child: const Center(
                        child: Text(
                          'Verify',
                          // style: GoogleFonts.arapey(
                          //     fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 2, 51, 92)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Receive a code? ",
                      style: GoogleFonts.lato(fontSize: 14),
                    ),
                    Text(
                      'Resend',
                      style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 243, 95, 95)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget inputBox(BuildContext context, TextEditingController controller) {
  return Container(
      height: 58,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: const Color.fromARGB(255, 7, 12, 15)),
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: TextFormField(
        decoration: const InputDecoration(border: InputBorder.none),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        controller: controller,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ));
}
