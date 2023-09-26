import 'package:coffee_shop/form/login_form.dart';
import 'package:coffee_shop/otp/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RegestrationPage extends StatefulWidget {
  const RegestrationPage({super.key});

  State<RegestrationPage> createState() => _RegestrationPageState();
}

class _RegestrationPageState extends State<RegestrationPage> {
  late double height, width;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform registration or any other action here
      // You can access the input values using _nameController.text, _emailController.text, etc.
      // For simplicity, let's just print the input values for now.
      print('Name: ${_nameController.text}');
      print('Email: ${_numberController.text}');
      print('Password: ${_passwordController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 2, 51, 92),
      //   title: const Text('Registration Form'),
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height / 4.5,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 2, 51, 92)),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 2, 51, 92)),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                height: 85,
                                width: 300,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Image.asset('assets/images/ditya.jpg'),
                                )),
                            // Text("Create your account!",
                            //     style: GoogleFonts.unna(
                            //         fontSize: 30,
                            //         color: Color.fromARGB(255, 2, 51, 92))),
                            const SizedBox(
                              height: 30,
                            ),
                            // TextFormField(
                            //   controller: _nameController,
                            //   decoration: const InputDecoration(
                            //       enabledBorder: UnderlineInputBorder(
                            //         borderSide: BorderSide(color: Colors.grey),
                            //       ),
                            //       focusedBorder: UnderlineInputBorder(
                            //         borderSide: BorderSide(
                            //             color: Color.fromARGB(255, 2, 51, 92)),
                            //       ),
                            //       labelText: 'Name',
                            //       labelStyle: TextStyle(
                            //           color: Color.fromARGB(255, 2, 51, 92)),
                            //       hintText: 'full Name',
                            //       hintStyle: TextStyle(fontSize: 12)),
                            //   validator: (value) {
                            //     if (value!.isEmpty) {
                            //       return 'Please enter your name';
                            //     }
                            //     return null;
                            //   },
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    label: const Text('Name'),
                                    labelStyle: const TextStyle(
                                        color: Color.fromARGB(255, 2, 51, 92)),
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
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: _numberController,
                                  decoration: InputDecoration(
                                    label: const Text('Mobile Number'),
                                    labelStyle: const TextStyle(
                                        color: Color.fromARGB(255, 2, 51, 92)),
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
                                      return 'Please enter your Mobile Number';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    label: const Text('Password'),
                                    labelStyle: const TextStyle(
                                        color: Color.fromARGB(255, 2, 51, 92)),
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
                                      return 'Please enter your Password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 46,
                                child: TextFormField(
                                  controller: _confirmpasswordController,
                                  decoration: InputDecoration(
                                    label: const Text('Confirm Password'),
                                    labelStyle: const TextStyle(
                                        color: Color.fromARGB(255, 2, 51, 92)),
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
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                height: 35,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const otpVerification(),
                                          ));
                                    },
                                    child: const Center(
                                      child: Text(
                                        'Submit',
                                        // style: GoogleFonts.arapey(
                                        //     fontSize: 20, fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 2, 51, 92)))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already has account?"),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginScreen(),
                                          ));
                                    },
                                    child: const Center(
                                      child: Text(
                                        ' Login',
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
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: height / 7,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Create your account!",
                  style: GoogleFonts.crimsonText(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 239, 240, 241))),
            ),
          ),
        ],
      ),
    );
  }
}
