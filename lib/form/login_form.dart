import 'package:coffee_shop/coffee/home/multiStepper.dart';

import 'package:coffee_shop/form/registrationForm.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Login Form'),
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(300, 200)),
                  color: Color.fromARGB(255, 2, 51, 92),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.centerLeft,
                          height: 100,
                          width: 250,
                          child: Image.asset('assets/images/ditya.jpg')),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 15),
                        child: Text(
                          'Login',
                          style: GoogleFonts.unna(
                            fontSize: 30,
                            color: Color.fromARGB(255, 2, 51, 92),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          controller: _numberController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 25, left: 8),
                            isDense: true,
                            label: const Text('Mobile Number'),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 2, 51, 92)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 10) {
                              return 'Please enter your Number';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 25, left: 8),
                            isDense: true,
                            label: const Text('Password'),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 2, 51, 92)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Password';
                          } else if (value.length <= 6) {
                            return 'Password must be greater then 6 digit';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MUltiStepperpage(),
                                  ));
                            }
                          },
                          child: Center(
                            child: Text(
                              'Login',
                              // style: GoogleFonts.arapey(
                              //     fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 2, 51, 92),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Dont't have a account?"),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegestrationPage()));
                              },
                              child: const Center(
                                child: Text(
                                  ' Sigin',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 2, 51, 92),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
