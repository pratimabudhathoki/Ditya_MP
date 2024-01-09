import 'package:coffee_shop/register/home/multiStepper.dart';
import 'package:coffee_shop/register/home/persoanlDetail.dart';

import 'package:coffee_shop/form/registrationForm.dart';

import 'package:coffee_shop/otp/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform login or any other action here
      // You can access the input values using _emailController.text and _passwordController.text
      // For simplicity, let's just print the input values for now.
      print('Number: ${_numberController.text}');
      print('Password: ${_passwordController.text}');
    }
  }

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
                        padding: const EdgeInsets.only(bottom: 15),
                        child: SizedBox(
                          height: 55,
                          child: TextFormField(
                            controller: _numberController,
                            decoration: InputDecoration(
                              label: const Text('Mobile Number'),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 2, 51, 92)),
                              hintText: ' Mobile Number',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 2, 51, 92),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Confirm Password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 2, 51, 92)),
                            hintText: ' Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 2, 51, 92),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Confirm Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      // TextFormField(
                      //   controller: _passwordController,
                      //   decoration: InputDecoration(
                      //     labelText: 'Password',
                      //     labelStyle: TextStyle(color: Color.fromARGB(255, 2, 51, 92)),
                      //     focusedBorder: UnderlineInputBorder(
                      //       borderSide:
                      //           BorderSide(color: Color.fromARGB(255, 2, 51, 92)),
                      //     ),
                      //     hintText: ' Password',
                      //     hintStyle: TextStyle(fontSize: 12),
                      //   ),
                      //   obscureText: true,
                      //   validator: (value) {
                      //     if (value!.isEmpty) {
                      //       return 'Please enter your password';
                      //     }
                      //     // You can add more password validation rules if needed
                      //     return null;
                      //   },
                      // ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MUltiStepperpage()));
                          _submitForm();
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
