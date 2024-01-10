import 'package:coffee_shop/core/config/colors.dart';
import 'package:coffee_shop/core/constants/app_size.dart';
import 'package:coffee_shop/core/widgets/widgets.dart';
import 'package:coffee_shop/form/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegestrationPage extends StatefulWidget {
  const RegestrationPage({super.key});

  @override
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


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: height * 0.10,
                alignment: Alignment.bottomLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.pagePadding),
                child: Text(
                  "Create your account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.white),
                ),
              ),
              const Gap(12.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.pagePadding),
                margin:
                    const EdgeInsets.symmetric(horizontal: AppSize.pagePadding),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppSize.curveValue)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(12.0),
                    Container(
                        alignment: Alignment.topLeft,
                        height: 85,
                        width: 300,
                        child: Image.asset('assets/images/ditya.jpg')),
                    const Gap(24.0),
                    PrimaryTextField(
                        controller: _nameController, label: "Full name"),
                    const Gap(12.0),
                    PrimaryTextField(
                        controller: _numberController, label: "Mobile number"),
                    const Gap(12.0),
                    PrimaryTextField(
                        controller: _passwordController, label: "Password"),
                    const Gap(12.0),
                    PrimaryTextField(
                        controller: _confirmpasswordController,
                        label: "Confirm password"),
                    const Gap(12.0),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Submit")),
                    const Gap(12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already has account?",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ));
                          },
                          child: Center(
                            child: Text(
                              ' Login',
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
