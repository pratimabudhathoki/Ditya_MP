import 'package:coffee_shop/core/widgets/primary_text_field.dart';
import 'package:coffee_shop/register/home/multiStepper.dart';

import 'package:coffee_shop/form/signup_screen.dart';
import 'package:coffee_shop/src/landing_screen.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/config/colors.dart';
import '../core/constants/size_manager.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.10,
                alignment: Alignment.bottomLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
              const Gap(12.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
                margin:
                    const EdgeInsets.symmetric(horizontal: SizeManager.pagePadding),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.all(Radius.circular(SizeManager.curveValue)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Gap(12.0),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: 100,
                        width: 250,
                        child: Image.asset('assets/images/ditya.jpg')),
                    const Gap(24.0),
                    PrimaryTextField(
                        controller: _numberController, label: "Mobile number"),
                    const Gap(12.0),
                    PrimaryTextField(
                        controller: _passwordController, label: "Password"),
                    const Gap(12.0),
                    ElevatedButton(
                        onPressed: () {
                          // context.go('/');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MUltiStepperpage()));
                        },
                        child: const Text("Log In")),
                    const Gap(12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have a account?",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegestrationPage()));
                          },
                          child: Center(
                            child: Text(
                              ' Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: AppColors.primary),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(12.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
