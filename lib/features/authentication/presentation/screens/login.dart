import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_n_hire/core/theme/styles.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../core/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.44,
              width: size.width,
              child: Image.asset(
                "assets/placeholder1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    "Hey Welcome Back!",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black87
                            : Colors.grey),
                  ),
                  const Gap(25),
                  TextDivider.horizontal(
                      text: Text(
                    'Log in or sign up',
                    style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black54
                            : Colors.grey),
                  )),
                  const Gap(25),
                  Container(
                      decoration: const BoxDecoration(),
                      child: TextFormField(
                        style: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black87
                                    : Colors.grey),
                        decoration: InputDecoration(
                            prefixText: '+91 ',
                            prefixStyle: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: 15),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Enter Phone Number",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      )),
                  const Gap(18),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push('/userdetail');
                      },
                      style: authbtnstyle,
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Gap(25),
                  TextDivider(
                      text: Text(
                    'or',
                    style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black54
                            : Colors.grey),
                  )),
                  const Gap(25),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(color: kyellow)),
                          fixedSize: const Size(double.infinity, 50),
                          foregroundColor: Colors.black45,
                          backgroundColor:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey.shade100
                                  : appBgColor),
                      child: Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black54
                                    : Colors.grey),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Text(
                    'By continuing, you agree to our Terms of Service, Privacy Policy',
                    style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black87
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
